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

## Lesson 4
- Pre-reading: [BTC Step by Step](https://blockgeeks.com/guides/best-bitcoin-script-guide/). I thought this was cool. To walk through every step of the BTC transaction process and understand how a transaction is made.
- Pre-reading [Various Consensus Protocols](https://www.coindesk.com/short-guide-blockchain-consensus-protocols). I thought Intel's proof of elapsed time was cool.
- [This](https://www.oreilly.com/library/view/mastering-bitcoin/9781491902639/ch08.html) is not pre-reading but it helped me understand how mining works under the hood. I had trouble with understanding mempool and the transactions previously.

## Lesson 5
- Pre-reading: [ACM Article](https://queue.acm.org/detail.cfm?id=3136559). 
  - "blockchains are frequently presented as more secure than traditional registries—a misleading claim."
  - "We've seen repeatedly that ideas in the research literature can be gradually forgotten or lie unappreciated, especially if they are ahead of their time, even in popular areas of research." I thought this comment was great because deep learning was invented in the 1980s but is only possible today because of improvements in hardware.
- Pre-reading: [Making sense of Cryptoeconomics](https://www.coindesk.com/making-sense-cryptoeconomics). 
  - "One of the most common mistakes in this industry is made by those who view blockchains only through a lens of computer science or applied cryptography. We have a strong tendency to prioritize the things we are most comfortable with, and see things outside of our domain of expertise as less important." I'm guilty of this myself. I should take an active approach to keep an open mind on things outside of my domain of expertise.
  - A Vickrey auction is interesting. Bids are secret and the winner of the auction (defined as the player with the highest bid) only pays the second highest amount that was bid.
  - "For instance, the prediction market Augur requires cryptoeconomic mechanisms in order to function. Using its native token REP, Augur creates a system of incentives that rewards users for reporting the “truth” to the application, which is then used to settle bets in the prediction market. This is the innovation that makes a decentralized prediction market possible. Another prediction market, Gnosis, uses a similar method, though also lets users specify other mechanisms for determining true outcomes (commonly called “oracles”)." Oh this is a very interesting idea.
- Mostly on UTXOs and CS topics. Stuff I understood before or understood after doing the pre-readings.


## Lesson 6
- Pre-reading: [Smart Contract Use Cases](https://digitalchamber.org/wp-content/uploads/2018/02/Smart-Contracts-12-Use-Cases-for-Business-and-Beyond_Chamber-of-Digital-Commerce.pdf). I really liked this document. A concise summary of all the use cases. It's what I've been thinking a lot about recently.
- Pre-reading: [Ethereum Competitors](https://blockonomi.com/ethereum-competitors/)
  - "The fork came out of a user exploiting Ethereum’s plan to create a venture capital fund for every future application on the system. This plan was called the Decentralized Autonomous Organization (DAO), and it was essentially a complicated smart contract. It allowed any app idea to be voted on by token holders. If an idea was received positively, it was given the necessary funds to start development." I like this idea of venture capital.
  - Also heard of a few other blockchains.
  - Chainlink is super cool. I want to watch it closely.
- Pre-reading: [Nick Szabo Paper](http://www.truevaluemetrics.org/DBpdfs/BlockChain/Nick-Szabo-Smart-Contracts-Building-Blocks-for-Digital-Markets-1996-14591.pdf).
  - Really like the idea of "In the future the size distribution of multinational companies will approach that of local business, giving rise to
multinational small business". Writing this in 1996 is really prescient. 
  - I like the idea about smart property and the thing about making it prohibitively hard to skirt the contract. We can sort of embed smart contracts in physical assets like a house, where if you don't pay your electricity bills, electricity is turned off. Or if you sold the house already and refuse to honour the smart contract, the new owner can turn off the electricity or do some crazy stuff that would make it terrible for the previous owner to play punk - that way, a third party need not come and enforce.
- There are two more pre-readings. One is the Ethereum Whitepaper - it is just too long to read. Might spend some time in future reading it end to end. Vitalik wrote it when he was 19, and he was a recipient of a Thiel Fellowship. Impressive guy.
- Another is an [arxiv paper](https://arxiv.org/pdf/1801.02507.pdf). It looks interesting but not going to sink time in it now.
- Larry Lessig mentioned that "contracts always have the state present". That's a real interesting thought. The vending machine we see on the streets have an "implicit contract" of us not getting sick when we drink from it. The state enforces that implicit contract through various laws.
- For most contracts, the state is not going to care. But for some, like "offering 10K to anyone who would burn my parents house down", is one that would clearly be criminal in most countries. If you were stupid enough to believe in that "contract" and went to state courts (if you even could), there wouldn't be a case at all. The state is not going to help you enforce it!
- Is there ever, a situation, where the state is not present in the contract?
- Objective of contract law is not to eliminate risk - it's to allocate risk! And this reallocation of risk only matters if I can enforce the contract - legal system.
- Key value of smart contracts is that it is a substitute for a failed system. In a third world country, where people cannot contract because of a poor legal system, smart contracts could help if enough people are willing to use that system.
- When contracts are all in code, it becomes very precise, but sometimes obscurity is value. Like how do you factor a case when your house is hit by a meteorite? Do you code that in?
- Larry Lessig is super cool - he actually said "so f-king naive" hahaha. The context of him saying that was how some far right crypto enthusiasts imagine a world without government.
- There is actually no reason for lawyers to be there for the 90% of the stuff we do. Like when you buy a house, you need a lawyer there to sign documents for you!

## Lesson 7
- Didn't do the pre-readings because I've read some stuff similar before.
- Vitalik Buterin's Trilemma. Scalable, decentralized, secure.
- The "technical" challenges with Blockchain are easier to solve than things of human nature. Governance, collective action, public policy is the hardest to solve. Just a few days ago (June 2021), the FBI managed to recover the BTC from the Colonial Pipeline hackers! I guess this is a case where BTC is decentralized but a government could somehow still "hack" the ledger.
- BTC is expensive from an electricty perspective, but the entire US financial system costs 1.5T. From this perspective, it may not necessarily be higher!
- Sidechains are analogous to the banking system. The central bank could keep records of all 300M US citizens, but it's inefficient or perhaps technically impossible back then. So there are 9000 commercial banks to help with this and these 9000 entities reconcile with the central bank. 
- Learnt about the Lightning Network and it's actually an MIT initiative. Interestingly, just 22 hours ago (on 12th June 2021), Jack Dorsey suggested that Twitter is likely to integrate Lightning Network.
- Also on another note, there's a lot of buzz on the internet over Gary Gensler's take on the Bitcoin ETF that some folks are thinking of launching. It would be a good opportunity to use the lectures to try and guess Gary's take on crypto. Through all the lectures, he has claimed himself to be a centrist. I would interpret this to be him taking a stance of being supportive of crypto if it doesn't disrupt existing processes too quickly.
- Most societies want to ensure that money is not used for illegal activities. They want to make sure that money can be accurately tracked - and taxed.
- Another issue with cryptocurrency is that once you lose the private key or it's hacked - it's gone forever. However, with a traditional banking system, I can at least turn up physically and have some other human check that it is truly me. 
- Interoperability is important. I saw that a lot when working with legacy systems through my work at Palantir. You need existing systems to function, while you try to build your new system.  
- Consensus for software updates. If there's no consensus, then it leads to forks. Core developers are incentivized to develop new technologies that would be accepted by everyone. However, therein lies a problem or a tradeoff. We argue that systems like these are decentralized and truly democratic, but it actually is a Geniocracy to a certain extent - a rule by the intelligent. The intelligent core technologists could advocate Feature A, but another group advocates Feature B. This would lead to a fork. The simplest example was the ETH and ETC fork. Due to a hack, Vitalik (and his team?) decided to reverse the transactions of the hackers. Crypto was touted for being immutable but in this instance, mutability was allowed due to a "central government", Vitalik (and his team?) in this case.
- As an extension to the above point, it is hard to remove a "central authority". Humans have always looked to an authority figure as we stand on the shoulders of the giants who come before us. Silvio Micali started Algorand. As a Turing award winner for cryptography, his ideas in crypto are definitely worth looking into. As such, if a fork were to occur one day in Algorand, most people would follow Micali! It is important to keep in mind that whatever happens in crypto / DeFi in general, there is always a figure head that most people would follow. If you follow this line of argument, then DeFi, can be loosely reduced from a democracy, to a geniocracy, and then to a dictatorship. 
- There will be views from great minds who are crypto minimalists coming up in this class. It is interesting that this is such a divisive topic. Is this true of all ideas in history? Cars and mobile phones are surely not divisive. What other ideas were extremely divisive in the past and what has become of them? Matters regarding race, slavery and women's rights were probably divisive back in their day. However, when we look at it in 2021, I would say most people would agree that racism and slavery is bad, and women's rights are important. As we are at the start of the "crypto" revolution from 2009, what would we think of it when 2059 comes? We would likely converge on what is "right", in the sense of the common man thinking it is "right". As I write this in 2021, I can only imagine that existing institutions and trust in governments would still be around. Governments or some form of monarchy / ruling class have existed for five thousand years, and is something that will probably be here to stay as people look for a figure head (as mentioned above). As of now, I guess I am cautiously optimistic about crypto and look towards the various monetary authorities around the world for guidance.






