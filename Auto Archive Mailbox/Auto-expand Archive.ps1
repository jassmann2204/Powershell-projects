<#
.SYNOPSIS
Enable Auto-Expanding Archive for a single Microsoft 365 mailbox.

.DESCRIPTION
This script allows a Global Admin to safely enable auto-expanding archive
for a specific mailbox. The mailbox must have a qualifying license (Exchange Online Plan 2
or Exchange Online Archiving add-on). No emails or folders will be deleted.
#>

# ----------------------------
# Step 1: Install Exchange Online module (if not installed)
# ----------------------------
# Windows or Mac
Install-Module ExchangeOnlineManagement -Force
Import-Module ExchangeOnlineManagement

# ----------------------------
# Step 2: Connect to Exchange Online
# ----------------------------
# Replace <GlobalAdminEmail> with your Global Admin account
Connect-ExchangeOnline -UserPrincipalName <GlobalAdminEmail>

# ----------------------------
# Step 3: Verify archive mailbox and auto-expanding status
# ----------------------------
# Replace <UserMailboxEmail> with the mailbox to enable auto-expanding archive for
Get-Mailbox -Identity <UserMailboxEmail> | FL DisplayName,ArchiveStatus,AutoExpandingArchiveEnabled

# ----------------------------
# Step 4: Enable auto-expanding archive (if not already enabled)
# ----------------------------
Enable-Mailbox -Identity <UserMailboxEmail> -AutoExpandingArchive

# ----------------------------
# Step 5: Confirm it worked
# ----------------------------
Get-Mailbox -Identity <UserMailboxEmail> | FL DisplayName,AutoExpandingArchiveEnabled

# Expected output:
# AutoExpandingArchiveEnabled : True

# ----------------------------
# Step 6: Disconnect safely
# ----------------------------
Disconnect-ExchangeOnline -Confirm:$false
exit

<#
.NOTES
- This script is safe to run in production.
- No data is deleted; mailbox content remains intact.
- Auto-expanding archive takes effect automatically when mailbox nears 100 GB.
- For Mac users, run this inside PowerShell (pwsh) after installing via Homebrew.
#>
