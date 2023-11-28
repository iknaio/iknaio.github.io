---
layout: docs
title: Exporting and importing data and visualizations
parent: Using Iknaio Pathfinder
nav_order: 90
nav_exclude: true
published: false
---

At any time, users may download the current application state in various ways. By clicking the download symbol   in the top right toolbar, the following options exist (see Figure 16):

* GraphSense File (.gs): Downloads the complete graph as is, including annotations and highlights.
* TagPack (.yaml): Download user-defined tags as a TagPack YAML file, the standard manner in which GraphSense handles tags outside of the application.
* Graphics (.svg): Download the drawing of the graph itself as a scalable vector graphic (SVG) which can be easily used in other contexts (e.g., documents) or for printing.

Since all application state is only stored in the browser memory, it is lost if the browser or
browser tab is closed. However, having saved a GraphSense file, the user can import it back
into the dashboard by clicking the folder icon left to the download icon in the toolbar and selecting “GraphSense File”. After picking a file with the “.gs” extension from the user’s file system, the application will recreate it by first fetching the address/entity data from the GraphSense backend, then placing the nodes according to the stored state and finally fetching the edges between the nodes. This process may take a few seconds depending on how big the exported graph is, but it results in an up-to-date application state with the recently crawled ledger data.

Apart from importing a whole graph, the user may also import tags only by choosing the “TagPack (.yaml)” option. The annotations will then apply to the respective addresses and entities referenced in this TagPack.

