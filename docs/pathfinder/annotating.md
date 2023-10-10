---
layout: docs
title: Annotating addresses and entities
parent: Using Iknaio Pathfinder
nav_order: 80
---

A common use case while investigating transaction flows is annotating addresses and entities with individual information (tags). Right-clicking on an entity or address offers the option for this. A form pops up which provides the following input fields (see Figure 15):

* label: The specific piece of information for this entity/address
* source: Information on the source or reason for this annotation. This can also be a
Web URL.
* category: A dropdown menu for categories defined in GraphSense’s entity taxonomy
(e.g., User, Organization, ...)
* abuse: A dropdown menu for abuse categories defined the GraphSense’s abuse taxonomy (e.g., Scam, Investment Fraud, ...)

Finally, by clicking the “Save” button, the tag is stored in the local browser memory. User tags can be listed by clicking on the user-tag symbol in the top left of the toolbar. Because the GraphSense database is read-only for security reasons, the tag is not being sent to any remote storage. Rather, users must download their tag collection as a TagPack in order to persist it, which leads us to the next section.

