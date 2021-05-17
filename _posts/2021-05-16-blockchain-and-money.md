---
title: 15.S12 - Blockchain and Money
layout: post
tags: MIT 
local: 2021-05-16-blockchain-and-money
---

A post on my learnings from [15.S12](https://ocw.mit.edu/courses/sloan-school-of-management/15-s12-blockchain-and-money-fall-2018/) on MIT OCW.

## Lesson 1
- Why blockchain might be a "catalyst" for the finance industry?
- PizzaHut was associated as the first online sale in the world in 1994! It was called PizzaNet, but no one could figure out how to pay online back then.
- RSA is at the heart of internet and the blockchain. MIT is at the center of all the cryptography work.
- Many cryptographic digital currencies have failed before this. In chronological order, DigiCash (1989), Mondex, CyberCash, E-gold, Hashcash, Bit Gold, B Money, Lucre (1999). 
- M-Pesa. They were trading mobile minutes as a form of currency in Kenya. Half of the population in Africa is still unbanked.
- Satoshi Nakamoto solved the riddle of a peer to peer electronic cash system. Who is this guy...?
- "The best minds at MIT may still not know if Bitcoin / Blockchain will be next internet layer. There are some who are optimistic and some who are pessimistic. The views are diverse." - paraphrased from Gensler's lecture. In this course, we will review the maximalist and minimalist views.
- Satoshi did not invent the Blockchain - it was earlier. Stuart Haber from Bell Labs invented it. There's a Blockchain that has been running since 1990s!
- I like the idea of a Blockchain being append only - it was similar to the LinkedIn tech article of everything being an "append only" log. Link [here](https://engineering.linkedin.com/distributed-systems/log-what-every-software-engineer-should-know-about-real-time-datas-unifying). Solid read - recommend every CS student to read it.
- Byzantine General's Problem. I've heard of this problem multiple times and read about it. It's super complex. See [notes here](https://www.cs.cornell.edu/courses/cs6410/2018fa/slides/18-distributed-systems-byzantine-agreement.pdf). In the last slide, it's interesting that there's a timeline for all the solutions to the BGP and the future solution is still unknown.
- 18th May 2010 was the famous pizza buying event. No one offered until 3 days later! 10000 Bitcoins for 2 pizzas! 22nd May is now called Pizza Day apparently. 
- Ecoonomics of verification vs economics of networking. Blockchain adds costs to verification but lowers cost on the centralized authority. It's a tradeoff.
- Finance is about moving money and risk.
- What is the role of money? It is a medium of exchange, store of value, unit of account. 
- What is the role of finance? Moving, allocating and pricing money and risk throughout the economy. 
- Finance is like an hour glass. The world economy is grains of sands moving through the bottleneck and if you extract just a small portion of it, the wealth is huge. That's why there's such a huge economic rent.
- There are still 1.7B people in this world who are unbanked.
- There are lots of challenges in the financial sector - which means Blockchain potential opportunities!
- However, there are also financial challenges for the Blockchain.
- Bitcoin is 7 transactions per second - versus tens of thousands of transactions per second for Visa.
- Permissioned blockchains versus permissionless blockchains. 
- Worldwide capital market size. Global equity - 80T. Global debt and bond markets - 250T. Global holdings of gold - 7T. As of May 2021, BTC market cap is 1T. Wow.
- Startups take risk and ask for forgiveness but incumbents rather ask for permission. Incumbents are also eyeing the crypto market as there is opportunity (or concern). 
- Gensler is center minimalist on BTC. Center for smart contracts.
- A student in the class was working on a permissionless system for his startup 6 months ago and is now working on a permissioned system because of "market realities". 
- "Money is but a social construct"
- Did money start from barter or from ledger? Lots of debate over there from anthropologists and historians etc.
- Money is but a social and economic consensus.

## Lesson 2
- Pre-reading: [A Brief History of Money](https://spectrum.ieee.org/at-work/innovation/a-brief-history-of-money). 
  - "Kublai Khan was ahead of his time: He recognized that what matters about money is not what it looks like, or even what it’s backed by, but whether people believe in it enough to use it. Today, that concept is the foundation of all modern monetary systems, which are built on nothing more than governments’ support of and people’s faith in them. Money is, in other words, a complete abstraction—one that we are all intimately familiar with but whose growing complexity defies our comprehension."
  - "It’s really in the seventh century B.C.E., when the small kingdom of Lydia introduced the world’s first standardized metal coins, that you start to see money being used in a recognizable way. Located in what is now Turkey, Lydia sat on the cusp between the Mediterranean and the Near East, and commerce with foreign travelers was common. And that, it turns out, is just the kind of situation in which money is quite useful."
  - "What’s more, the notion that gold is somehow more “real” than paper is, well, a mirage. Gold is valuable because we’ve collectively decided that it’s valuable and that we’ll accept goods and services in exchange for it. And that’s no different, ultimately, from our collective decision that colorful rectangles of paper are valuable and that we’ll accept goods and services in exchange for them."
  - "This irrational fear is ultimately a legacy of the way money evolved: We cling to the belief that money needs to be backed by something “solid.” In that sense, we’re just like Marco Polo—still a bit amazed by the thought that you can base an entire economy on little pieces of paper."
  - "Successful currencies, after all, are those that people use: They lubricate commerce, allow people to exchange goods and services, and thus encourage people to work and create."
  - Takeaways: This is interesting and in line with some of my thoughts. If one were to distill how this world works, it can be broken down into simply the "exchange of goods and services". The laptop I'm using now, the cup I'm using now, the water I just drank, etc. Money is but the mere lubricant. How would a world that allows the exchange of goods and services but without money look like?
- Pre-reading: [A Brief History of Ledgers](https://medium.com/unraveling-the-ouroboros/a-brief-history-of-ledgers-b6ab84a7ff41).
  - "The central banking systems made ledger numbers, not commodities, the money of humanity. Most people spend most of their lives working at jobs to get paid. Now, this concretely means getting an increase in numbers in your bank account or getting central bank notes. Central banking caused a subtle but fundamental change in the human condition. Humanity’s primal motivation to gather wealth was redirected away from real goods to ledger numbers on paper and electronic databases."
  - "But a public ledger of what? Well, just like in the central banking system, the ledger entry numbers (bitcoin), are the money themselves. Like central bank credit, bitcoin isn’t redeemable for anything, but unlike central bank credit you can’t pay taxes with it. The blockchain is just a public ledger for the sake of having a public ledger. Weirdly enough, people decided that owning entries on this ledger was worth paying for."
  - "A full theory as to why people are willing to give up their hard earned bank numbers for bitcoin numbers is outside the scope of this article. I’m going to try and explain that another time." - I'd be keen to read this!
- Pre-reading: [Princeton Bitcoin Book](https://www.lopp.net/pdf/princeton_bitcoin_book.pdf). First twenty pages. Very engaging.
- Bitcoin is an interesting social construct. A student argued that there is no "inherent value" in it and it is not backed by any central bank. The people participating in the BTC market have a consensus that it's "worth something". Another student argued that there is "inherent value" as you can buy a pizza or something with it, just that the price fluctuates wildly now. 
- It turns out that there are no US law against creating your own money! But you have to comply with the other laws - like guarding against illicit activity.
- Can you legally pay for salaries in BTC in the US? I was surprised at the answer - it is a yes. But withholding taxes have to be computed and all. Arizona wanted to be the first state to accept taxes in BTC but that failed.
- Salt bars, cowrie shells, tally sticks, rai stones as non-metal money. The rai stones example were interesting because the stones were quarried 200Km away. An English explorer (O'Keefe) realized this, started mining the stones and then brought it to the island. There was an eventual economic collapse since the rate of production of rai stones was now way higher.
- Metal money came next - it was just pure pieces of metal. Hard to carry.
- Minted money came next - where it's stamped by the government.
- Bitcoin is a transaction ledger whereas Ethereum is a balance ledger. I didn't know that!
- Payment systems - A method to amend and record changes in ledgers for money.
- What does a dollar note actually mean in terms of liability to the central bank? It means that if you bring that dollar note into the country, we will record it on the ledger of a commercial bank. 
- A student mentioned that a central bank is a "legal and sustainable way to run a ponzi scheme where the value increases at the rate of inflation". That's an interesting way to put it.
- A central bank has a "social liability" to ensure that trust in money remains.
- Characteristics of money - durable, portable, divisible, fungible (see 1749 Royal Bank case), acceptable, stable.
- Central banks reserves are only available to commercial banks.

## Lesson 3
- Pre-Reading: Nakamoto paper itself. I glanced through it before. Read it again and got the ideas except for the probabilities on attacking the network and Gambler's Ruin.
- Mostly cryptography basics so nothing new to write about in this lesson.





