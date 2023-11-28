---
layout: docs
title: Inspecting entities (address clusters) and their statistical properties
parent: Using Iknaio Pathfinder
nav_order: 40
nav_exclude: true
published: false
---


In UTXO ledgers, a user can create and control an arbitrary number of addresses at no cost. Linking and clustering these addresses into a single set representing the real-world entity that likely controls these addresses is an essential task in cryptoasset analytics. GraphSense currently implements the co-spent heuristics, which is also known as multiple-input heuristics and assumes that inputs spent in the same transactions are controlled by the same user who must possess the corresponding private key for signing these inputs. While this method has proved very effective in practice, a known, possible source for false positives are CoinJoins, which can be identified and filtered before applying those heuristics.

Other known clustering heuristics rely on the identification of change addresses in the transaction outputs. However, since this depends on the technical nature of the client executing the transactions, GraphSense refrains from implementing any change heuristics and follows a very conservative clustering strategy and applies the multiple-input heuristics only. The underlying rationale is the avoidance of false positives, which we consider more important than implementing multiple but possibly ineffective heuristics.

Using the dashboard, the user can also inspect an address cluster, which is called an “entity” in GraphSense (see Figure 7). Since entities are essentially aggregations of addresses (see Figure 8), the statistical properties for entities correspond to those seen on the address-level, just on an aggregate level. Additionally, the user sees a GraphSense-internal entity ID and the root address of an entity, which is the oldest address within an address cluster. This information is useful when comparing entities or address clusters across tools.

TODO: add video


