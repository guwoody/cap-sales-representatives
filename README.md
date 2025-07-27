# Sales Representatives Hierarchy App

This is a minimal CAP (Cloud Application Programming) project that lists sales representatives with a focus on showcasing their **hierarchical structure**.

## 🚀 Features

- Listing sales representatives
- View the full hierarchy in a tree structure

## 📦 Tech Stack

- SAP CAP (Node.js)
- CDS data model with self-referencing associations

## 🧱 Core Concept

The main purpose of this app is to **visualize the sales hierarchy** — how sales representatives are structured under their superiors, forming a tree-like organization.

## 📂 Structure

- `db/`: CDS data model for `SalesRepresentatives`
- `srv/`: Service definitions
- `app/`: Fiori for tree visualization

## ▶️ Run the App

```bash
npm install
cds watch
