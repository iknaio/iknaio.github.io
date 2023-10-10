---
layout: docs
title: Ledger statistics page
parent: Using Iknaio Pathfinder
nav_order: 10
---

After entering their API key, users are forwarded to the ledger statistics page, which provides an overview of currently supported ledgers. It is essential to know that GraphSense can support any Bitcoin-like UTXO ledger and any Ethereum-like account model ledger and that additional ledgers can easily be integrated if needed, typically on (customer-)demand.

The ledger statistics page  shows, for each ledger, the last update date and latest block, the number of transactions and addresses as well as the number of distinct labels (considering clustering in UTXO), and the overall percentage of de-anonymised addresses. GraphSense release 22.11 currently provides daily updates, whereas tighter update intervals can be configured when requested by the customer.v

It is important to know that generic clustering techniques, as they are implemented for UTXO ledgers like Bitcoin, cannot be applied to account-model ledgers like Ethereum. Therefore, the number of entities (clusters) in Ethereum is zero.

TODO: add screenshot of statistics page

