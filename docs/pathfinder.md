---
layout: page
title: Using Iknaio Pathfinder
---

Iknaio Pathfinder provids users with the ability to easily inspect and trace cryptoasset payment flows using a simple visual dashboard.

# Ledger statistics page

After entering their API key, users are forwarded to the ledger statistics page, which provides an overview of currently supported ledgers. It is essential to know that GraphSense can support any Bitcoin-like UTXO ledger and any Ethereum-like account model ledger and that additional ledgers can easily be integrated if needed, typically on (customer-)demand.

The ledger statistics page  shows, for each ledger, the last update date and latest block, the number of transactions and addresses as well as the number of distinct labels (considering clustering in UTXO), and the overall percentage of de-anonymised addresses. GraphSense release 22.11 currently provides daily updates, whereas tighter update intervals can be configured when requested by the customer.v

It is important to know that generic clustering techniques, as they are implemented for UTXO ledgers like Bitcoin, cannot be applied to account-model ledgers like Ethereum. Therefore, the number of entities (clusters) in Ethereum is zero.

TODO: add screenshot of statistics page

# Searching for addresses, transactions, labels, or blocks

When using the GraphSense dashboard, users typically want to search for a given address, a given transaction, a particular label (e.g., Kraken, Binance, Coinbase), or a certain block. The user can enter the leading characters of an address (e.g., 17vzpL...) and GraphSense returns matching addresses found in the corresponding ledgers. The user can select the address to be inspected further.

Autocompletion of user queries is also supported for transactions, labels, and blocks. Users can also enter multiple, whitespace-separated addresses in a row to inspect sets of addresses or money flow paths.

TODO: add video

# Inspecting addresses and their statistical properties and other details

After having selected an address, the user sees that address (the focus address) on the dashboard and a property box summarising the most important statistical properties, as shown in Figure 5. The box shows the cryptocurrency that address is part of (BTC), the number of available attribution tags (2) for that address, the number of transactions that address has been involved (19) as a receiver of funds (17) and as a sender of funds (2). It also shows the number of addresses that sent funds to the focus address (29) and the number of addresses that received funds from the focus address (2). Additionally, it shows the first usage date of that address (11/02/2018), when it was used last (11/15/2018), and the corresponding usage period (approx. 13 days). Finally, it shows how much that address has received in total (1.5784 BTC) and the current balance of that address (0 BTC).

Some of these statistics are aggregated and can be inspected in more detail by clicking the three-dot symbol next to each line. For instance, when clicking on the dots in the “Transactions” row, one can inspect the transactions this address has been involved in more detailed.

The corresponding box on the dashboard displays the statistical properties of an address, which are important to understand when following the money flow, like the number of incoming (in-degree) and outgoing (out-degree) addresses. This specific example also shows a red-flash-light symbol indicating that this address has been involved in some form of abuse derived from the attribution tags.

Analogous to addresses, GraphSense also provides statistical properties for transactions and blocks.

Using the gear symbol in the top-right menu bar (see Figure 6), the user can configure view settings, like the type of information displayed on the dashboard. Most importantly, the user can change the type of currency (native coin vs fiat values) and convert all values in the property boxes and the dashboard considering historical exchange rates. It is also possible to switch the information displayed on address nodes and edges representing money flows (value vs the number of transactions).

# Inspecting entities (address clusters) and their statistical properties

In UTXO ledgers, a user can create and control an arbitrary number of addresses at no cost. Linking and clustering these addresses into a single set representing the real-world entity that likely controls these addresses is an essential task in cryptoasset analytics. GraphSense currently implements the co-spent heuristics, which is also known as multiple-input heuristics and assumes that inputs spent in the same transactions are controlled by the same user who must possess the corresponding private key for signing these inputs. While this method has proved very effective in practice, a known, possible source for false positives are CoinJoins, which can be identified and filtered before applying those heuristics.

Other known clustering heuristics rely on the identification of change addresses in the transaction outputs. However, since this depends on the technical nature of the client executing the transactions, GraphSense refrains from implementing any change heuristics and follows a very conservative clustering strategy and applies the multiple-input heuristics only. The underlying rationale is the avoidance of false positives, which we consider more important than implementing multiple but possibly ineffective heuristics.

Using the dashboard, the user can also inspect an address cluster, which is called an “entity” in GraphSense (see Figure 7). Since entities are essentially aggregations of addresses (see Figure 8), the statistical properties for entities correspond to those seen on the address-level, just on an aggregate level. Additionally, the user sees a GraphSense-internal entity ID and the root address of an entity, which is the oldest address within an address cluster. This information is useful when comparing entities or address clusters across tools.

TODO: add video

# Inspecting address attribution tags

Attribution tags are any form of context information that can be attributed to an address, transaction, or cluster, such as the name of an exchange hosting the associated wallet or some other personally identifiable information (PII) of the account holder. The strength of the attribution approach lies in combining address clusters with attribution tags: a tag attributed to a single address being controlled by some cryptoasset service, which typically forms a large address cluster, can easily de-anonymise hundreds of thousands of addresses.

Given the important role of attribution tags, GraphSense follows key legal requirements for forensic data processing, as outlined3 by legal scholars and technical experts in the field. The provenance of attribution tags, for instance, is a critical foundation for assessing their quality and authenticity, as well as for enabling trust and allowing reproducibility.

Users can inspect the provenance (origin) and additional metadata of attribution tags by opening the corresponding “address tags” detail view. Figure 9, for instance, shows that the attribution tags labelling the given cluster originate from a scientific study on sextortion campaigns, which can be retrieved by following the provided source link.

TODO: add video

# Following the money

Starting from a given focus address, the user can follow the money flows by clicking on the right- or left-hand side of an address. If the number of incoming- or outgoing addresses is lower than a certain threshold (25), then the dashboard automatically expands the connected addresses. If the number is higher and hard to visualise, it opens the address-detail view table and lets the user select which addresses to display on the dashboard.

A directed edge between two addresses (see Figure 10) represents the aggregated money flow between them. The edge label can be configured (gear symbol) and either shows the aggregated sum of values transferred between two addresses or the aggregated number of involved transactions. By clicking on an edge, the user can inspect involved transactions in more detail and inspect their specific inputs and outputs.

We point out that following the money flows on the address-level is a key feature for many blockchain and cryptoasset analytics tasks because it represents what an analyst is typically interested in: the flow of money between addresses. The underlying address-graph is the corresponding data representation required to support that kind of traversal.

GraphSense supports the inspection of individual addresses but refrains from providing transaction-level tracing features since this is already supported by many openly available tools (e.g., Blockstream4 explorer).

Analogous to following the money on the address-level, the user can also follow money starting from a given focus entity, i.e., a cluster of addresses. Just as the nodes represent aggregations of addresses, the edges in this graph represent aggregations of money flows. By clicking on an edge, the user can see detailed information about the data points contributing to this information.

The example provided in Figure 11 shows a typical money laundering pattern: the perpetrator, who received funds from sextortion spam victims, spreads the funds over several intermediate wallets to make it difficult for authorities to trace the funds.

We point out that inspecting money flows between entities/clusters can be highly effective because the investigator is presented with a highly aggregated view and can quickly identify potential connections without the need to inspect (lower-level) address flows or (lowest- level) transactions. However, we explicitly warn against following money flows on the cluster- level only if the underlying data points forming a cluster are unknown and might potentially comprise false positives. Therefore, GraphSense provides the combined address- and entity- level view, which allows the investigator to first follow the money on the entity level and then refine relevant paths on the address level.

Since following individual money flows is a tedious and resource-intensive task, GraphSense also provides an automated path search feature (see Figure 12). By right-clicking on an entity box, the user can start a search for certain types (e.g., Exchange) of source or target nodes in both directions. Since the search space can be very large, the user must restrict the search to a certain depth (e.g., 4), breadth (e.g., 20), and maximum size of an address cluster (e.g., 20) hit during a search request. The dashboard then presents the results, as shown in Figure 13.

# Highlighting important paths

Having discovered money flows of interest, the user can highlight entities and addresses individually by assigning colours to them (see Figure 14). The highlighting tool can be found in the toolbar in the top right as a pen icon. By clicking on it, a set of predefined colours appears. The user may now pick one of them and see the cursor turn into a crosshair when hovering over an entity or address. Simple clicking assigns the selected colour to the node. Edges between addresses/entities highlighted in the same colour are also drawn in the same colour.

Additionally, the user has the option to label colours by typing into the respective text field in the highlighting tool. The trash bin icon next to the text field leads to highlights of that colour being removed from the graph.

# Annotating addresses and entities

A common use case while investigating transaction flows is annotating addresses and entities with individual information (tags). Right-clicking on an entity or address offers the option for this. A form pops up which provides the following input fields (see Figure 15):

* label: The specific piece of information for this entity/address
* source: Information on the source or reason for this annotation. This can also be a
Web URL.
* category: A dropdown menu for categories defined in GraphSense’s entity taxonomy
(e.g., User, Organization, ...)
* abuse: A dropdown menu for abuse categories defined the GraphSense’s abuse taxonomy (e.g., Scam, Investment Fraud, ...)

Finally, by clicking the “Save” button, the tag is stored in the local browser memory. User tags can be listed by clicking on the user-tag symbol in the top left of the toolbar. Because the GraphSense database is read-only for security reasons, the tag is not being sent to any remote storage. Rather, users must download their tag collection as a TagPack in order to persist it, which leads us to the next section.

# Exporting and importing data and visualizations

At any time, users may download the current application state in various ways. By clicking the download symbol   in the top right toolbar, the following options exist (see Figure 16):

* GraphSense File (.gs): Downloads the complete graph as is, including annotations and highlights.
* TagPack (.yaml): Download user-defined tags as a TagPack YAML file, the standard manner in which GraphSense handles tags outside of the application.
* Graphics (.svg): Download the drawing of the graph itself as a scalable vector graphic (SVG) which can be easily used in other contexts (e.g., documents) or for printing.

Since all application state is only stored in the browser memory, it is lost if the browser or
browser tab is closed. However, having saved a GraphSense file, the user can import it back
into the dashboard by clicking the folder icon left to the download icon in the toolbar and selecting “GraphSense File”. After picking a file with the “.gs” extension from the user’s file system, the application will recreate it by first fetching the address/entity data from the GraphSense backend, then placing the nodes according to the stored state and finally fetching the edges between the nodes. This process may take a few seconds depending on how big the exported graph is, but it results in an up-to-date application state with the recently crawled ledger data.

Apart from importing a whole graph, the user may also import tags only by choosing the “TagPack (.yaml)” option. The annotations will then apply to the respective addresses and entities referenced in this TagPack.