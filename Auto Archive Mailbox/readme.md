# Auto Archive Mailbox - Microsoft 365 PowerShell Project

## Overview

This project demonstrates how to **safely enable auto-expanding archive** for a Microsoft 365 mailbox using PowerShell.  
It solves the problem of mailboxes hitting the **100 GB archive limit**, allowing them to grow automatically **without deleting emails, attachments, or folders**.

This solution is especially useful for **business users** running on **Exchange Online Plan 2** or with the **Exchange Online Archiving add-on**.

---

## Scenario

A **family friend running a small business** reached out because their mailbox was approaching the **100 GB archive limit**. Emails and attachments were safe, but they were concerned about disruption to daily operations.

I was able to:
- Verify their mailbox license supported auto-expansion.
- Connect to Exchange Online via PowerShell.
- Enable auto-expanding archive for the specific mailbox.
- Confirm that the feature was active with no disruption.

The mailbox now **automatically expands as needed**, allowing uninterrupted email usage.

---

## Key Takeaways

- Auto-expanding archive is **safe and non-disruptive**.
- No emails, folders, or attachments are deleted.
- Works seamlessly with **Exchange Online Plan 2** mailboxes.
- Can be applied to **single mailboxes or tenant-wide** if needed.

---

## Folder Structure
Powershell Scripts/
└── Auto Archive Mailbox/
    ├── Auto-expand Archive.ps1   # PowerShell script
    ├── Enabling Auto KB.docx     # Knowledge base doc
    └── Enabling Auto KB.pdf      # Knowledge base PDF

---

## How It Works

1. Verify that the mailbox has an **Exchange Online Plan 2 license**.  
2. Connect to Exchange Online via PowerShell using a Global Admin account.  
3. Run the `Auto-expand Archive.ps1` script to enable auto-expanding archive for the mailbox.  
4. Verify that `AutoExpandingArchiveEnabled` is `True`.  
5. Mailbox archive now grows automatically beyond 100 GB whenever needed.  

> No emails, attachments, or folders are affected during this process.

---

