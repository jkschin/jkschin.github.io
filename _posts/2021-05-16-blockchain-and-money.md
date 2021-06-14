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

## Lesson 8
- Pre-reading: [Gensler Paper To Committee on Agriculture](https://docs.house.gov/meetings/AG/AG00/20180718/108562/HHRG-115-AG00-Wstate-GenslerG-20180718.pdf). The title struck me because it was addressed to the Committee on Agriculture. Long read!
  - From reading this, it almost feels like Gensler is slightly maximalist on crypto.
  - You don't actually own the wallet in a decentralized way when trading on the exchange.
  - "I’m an optimist and want to see this new technology succeed. It could
lower costs, risks and economic rents in the financial system.". He stated his position!
- Pre-reading: [Stiglitz and BTC](https://www.cnbc.com/2018/07/09/nobel-prize-winning-economist-joseph-stiglitz-criticizes-bitcoin.html). I guess I can agree with Stiglitz that a digital currency for the US will be created in future, just like the digital yuan in China. 
- Pre-reading: [Mark Carney Speech](https://www.bankofengland.co.uk/-/media/boe/files/speech/2018/the-future-of-money-speech-by-mark-carney.pdf?la=en&hash=A51E1C8E90BDD3D071A8D6B4F8C1566E7AC91418).
  - Money solves the coincidence of wants.
- With respect to crypto assets, governments want to guard against illicit activity, maintain financial stability and protect the investing public.
- Japan had one of the earliest crypto exchanges - Mt. Gox. Because of the hack, Japan came out with new regulation to protect investors. A few of these exchanges got shutdown after.
- When they talk about illicit activity, tax evasion is actually one of the highest, if not the highest priority.
- Bank secrecy act - prevents AML and you need to do KYC.
- Crypto is still too small in market cap for regulators to worry about financial stability. But countries with capital controls might be concerned about that as it is a means for capital to flow out without the state knowing.
- Central Bank Digital Currency (CBDC). If one is started, it might cause a run on commercial banks.
- Howey Test (1946). Citrus groves case in 1946. Were the citrus groves an investment contract? You can Google the 4 questions to test this. If they are an investment contract, then it is a security.
- Public policy development. I learnt something new. If you want to push a new policy, you first need to get your messaging right. Once you have the messaging, you can then build a coalition (politics). Only after you get the support can you do your analysis and then a policy emerges. 2016 Elections messaging was MAGA. 2008 Elections was "Change we can believe in". 2000 Elections was "compassionate conservative". 1992 was "It's the economy stupid". After policy is implemented, don't forget that policy is personnel. The highest level of people are the elected officials, followed by the senior managers in various departments, and then the day to day person that's executing the policy. 

## Lesson 9
- Pre-reading [Enterprises Building Blockchain Confront Early Tech Limitations](https://www.coindesk.com/enterprises-building-blockchain-confront-tech-limitations). 
  - "Blockchain is here to stay, but so too are centralized authorities."
  - "At the core of this concept is the idea that public blockchains will never fully be able to give enterprise counterparties the trust they need to run their regulated businesses."
- Pre-reading [Hyperledger](https://hyperledger-fabric.readthedocs.io/en/release-1.2/whatis.html)
  - Built by the Linux Foundation - very trusted.
  - Would there be value in creating an application on Hyperledger for firms to manage their supply chains?
  - "This lack of confidentiality can be problematic for many business/enterprise use cases. For example, in a network of supply-chain partners, some consumers might be given preferred rates as a means of either solidifying a relationship, or promoting additional sales. If every participant can see every contract and transaction, it becomes impossible to maintain such business relationships in a completely transparent network – everyone will want the preferred rates!" - This is a point related to fully permissionless systems.
- There were three other pre-readings - did not take away much from them.
- The Digital Assets pre-reading mentioned Blythe Masters. Apparently she's extremely brilliant and was the creator of credit default swaps? In any case, Digital Assets seem to not exists any more.
- One of the EECS PhD students in the class switched from using Ethereum to a permissioned system because they were mainly working with banks. He thought that it is unlikely that banks in the future will adopt Ethereum as their underlying technology. Corda was funded by banks, so he decided to switch to Corda. 
- A student asked about title deeds on the blockchain. Mark, a guest at the lecture who is a real estate fund manager at Fidelity, said that some towns in the US are simply just happy with their own system of record. The possibility of that happening is remote, but of course given enough time, is possible. Real estate is probably the best thing to put on a permissionless blockchain because you transact so few times. However, it's not as simple as just transferring the deed, because utility companies might have some claims on the eastments, the land under it, etc. 
- Walmart is already using blockchain for supply chains [here](https://www.hyperledger.org/learn/publications/walmart-case-study). 
  - "IBM brought Hyperledger Fabric to us. We looked into Ethereum, Burrow project and others. Ultimately, we decided to go with Hyperledger Fabric because it met most of our needs for a blockchain technology,” Bedwell said. “We felt that it best met our needs. It is an enterprise-grade blockchain technology, and it is permissioned."
- Main takeaways. The framework of permissionless, permissioned and a simple DB is useful. Each business case would be well suited for a specific technology. For example, large firms like Walmart found Ethereum (permissionless) to be not suitable. Or the student's startup, who switched from Ethereum to Corda. It seems like incumbents would err on the side of caution and use permissioned system. In light of this, it's helpful to think of what use cases would really flourish in the permissionless framework. My immediate thought for this would be the unbanked and developing countries, where they are unable to trust their governments or a central authority.

## Lesson 10
- Pre-reading: [In 2008, America Stopped Believing in the American Dream](https://nymag.com/intelligencer/2018/08/frank-rich-2008-financial-crisis-end-of-american-dream.html). A takeaway is that the rich have just been trying to enrich themselves, which could imply that a more decentralized form of governance could reduce inequality. Whatever form this may take, remains to be seen. It was also interesting to note that in 2008, the media reported "this is the worst recession since 1929". In 2020, when COVID hit, the media reported the exact same thing, but also at times added that it was worse than 2008. Somehow rather, even though it's always reported as "worse than ever before", we seem to bounce back fine.
- Pre-reading: [Sheila Bair on What Hasn’t Changed Since the Great Recession](https://nymag.com/intelligencer/2018/08/sheila-bair-on-what-hasnt-changed-since-the-great-recession.html)
  - Learnt a new term: Main Street, which refers to independent small business owners. 
  - She's of the opinion that Citigroup should have been restructured. If things haven't changed since 2008, are we in for another huge recession some day?
  - Takeaway: decentralization from large financial institutions could help in preventing another Great Recession.
- Two more pre-readings that were long that I skimmed through. The academic paper is arguing that banks are getting larger and discussing the effects of it.
- A student mentioned that a potential opportunity is to build a bank. Gensler's thought is that most successful projects would be more targeted, rather than one so broad as to be building a bank. 
- 39% of US equity is held by households. 30% is held by funds / ETFs. 12% from pension funds. I didn't know households held so much of US equity directly.
- A student asked what's the state of the US economy now (2019), compared to ten years ago (2009). Gensler thinks that there are high valuations in the stock market, but it's not a levered asset class (Archegos failed in 2021 though). A real estate bubble normally leads to more calamitous outcomes because there's more borrowing against the asset, and when the revaluation comes, catastrophe strikes. The best example was Japan in 1990s. The valuation of houses was just way below the debt.
- Building on the Archegos example above, a quick search yields that the banks that lent to Archegos collectively lost about 10Bn. Archegos had about 10Bn in assets but it's exposure to equity was about 50Bn. If a few more of these funds blow up, we are in for another crash.
- Gensler thinks that in 2019, the economy was in a bit of a bubble. That's interesting. If 2019 was a bubble, what's 2021.

