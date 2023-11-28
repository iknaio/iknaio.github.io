---
layout: docs
title: Following the money
parent: Using Iknaio Pathfinder
nav_order: 60
nav_exclude: true
published: false
---

Starting from a given focus address, the user can follow the money flows by clicking on the right- or left-hand side of an address. If the number of incoming- or outgoing addresses is lower than a certain threshold (25), then the dashboard automatically expands the connected addresses. If the number is higher and hard to visualise, it opens the address-detail view table and lets the user select which addresses to display on the dashboard.

A directed edge between two addresses (see Figure 10) represents the aggregated money flow between them. The edge label can be configured (gear symbol) and either shows the aggregated sum of values transferred between two addresses or the aggregated number of involved transactions. By clicking on an edge, the user can inspect involved transactions in more detail and inspect their specific inputs and outputs.

We point out that following the money flows on the address-level is a key feature for many blockchain and cryptoasset analytics tasks because it represents what an analyst is typically interested in: the flow of money between addresses. The underlying address-graph is the corresponding data representation required to support that kind of traversal.

GraphSense supports the inspection of individual addresses but refrains from providing transaction-level tracing features since this is already supported by many openly available tools (e.g., Blockstream4 explorer).

Analogous to following the money on the address-level, the user can also follow money starting from a given focus entity, i.e., a cluster of addresses. Just as the nodes represent aggregations of addresses, the edges in this graph represent aggregations of money flows. By clicking on an edge, the user can see detailed information about the data points contributing to this information.

The example provided in Figure 11 shows a typical money laundering pattern: the perpetrator, who received funds from sextortion spam victims, spreads the funds over several intermediate wallets to make it difficult for authorities to trace the funds.

We point out that inspecting money flows between entities/clusters can be highly effective because the investigator is presented with a highly aggregated view and can quickly identify potential connections without the need to inspect (lower-level) address flows or (lowest- level) transactions. However, we explicitly warn against following money flows on the cluster- level only if the underlying data points forming a cluster are unknown and might potentially comprise false positives. Therefore, GraphSense provides the combined address- and entity- level view, which allows the investigator to first follow the money on the entity level and then refine relevant paths on the address level.

Since following individual money flows is a tedious and resource-intensive task, GraphSense also provides an automated path search feature (see Figure 12). By right-clicking on an entity box, the user can start a search for certain types (e.g., Exchange) of source or target nodes in both directions. Since the search space can be very large, the user must restrict the search to a certain depth (e.g., 4), breadth (e.g., 20), and maximum size of an address cluster (e.g., 20) hit during a search request. The dashboard then presents the results, as shown in Figure 13.


