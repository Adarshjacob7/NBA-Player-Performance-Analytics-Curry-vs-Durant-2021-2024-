<h1>NBA Player Performance Analysis: Curry vs Durant (2021–2024)</h1>

 ### [LINK TO BE UPLOADED](https://youtu.be/7eJexJVCqJo)

<h2>Description</h2>
This project presents a comparative analysis of offensive and defensive performance of Stephen Curry and Kevin Durant across four NBA seasons (2021–2024). Using SQL for data preparation and Tableau for interactive dashboards, the analysis focuses on efficiency, scoring style, playmaking balance, and defensive contribution, rather than raw box-score totals.

The goal is to demonstrate how data-driven metrics and visual storytelling can be used to compare two elite players with different offensive roles and defensive profiles.

<br />

<h2>Key Analytical Questions</h2>

1. How has each player’s scoring efficiency (TS%) evolved over time?
2. Is scoring driven by efficiency or shot volume?
3. How do their shot profiles and accuracy differ across seasons?
4. How do playmaking responsibility and ball security compare?
5. Who provides greater two-way impact when offense and defense are evaluated together?

<br />

<h2>Data Sources</h2>

Webscrapped data from xxx site

These datasets were joined and transformed in SQL to create a clean analytical base.

<br />


<h2>Metrics & Methodology</h2>

A. Offensive Analysis

1. True Shooting Percentage (TS%)
2. Points per Game (PPG), Field Goal Attempts (FGA)
3. Assist-to-Turnover efficiency
4. Game Score (overall offensive impact)



B. Defensive Analysis (Proxy-Based)

Due to limited advanced tracking data, defensive impact was measured using custom-built indices:

1. Defensive Activity Index (steals, blocks, rebounds, fouls)
2. Disruption Rate (STL + BLK)
3. Rebounding impact proxies
4. Defensive Discipline score (fouls + turnover percentage)
5. Plus/Minus as contextual on-court impact

<br />

<h2>Languages and Utilities Used</h2>

- <b>1. Python- Webscrapping site to get NBA log data (2021–2024 seasons)</b> 
- <b>2. SQL – data cleaning, aggregation, and feature engineering</b>
- <b>3. Tableau – interactive dashboards and visual storytelling</b>

<br />

<h2>Tableau Dashboard Features</h2>

1. TS% efficiency trend lines (main insight)
2. Scoring volume vs efficiency scatter plots
3. Shot mix and shooting accuracy breakdowns
4. Playmaking vs ball security dual-axis charts
5. Two-way impact visualization combining offense and defense

Interactive filters allow exploration by Player and Year

<br />

<h2>Key Outcomes </h2>

This project highlights the importance of efficiency-focused metrics and proxy modeling when comparing players with different roles. It demonstrates strong skills in analytical reasoning, metric design, SQL querying, and dashboard development, with an emphasis on clarity and decision-oriented insights.

<br />

<h2>TABLEAU SNAPSHOTS:</h2>



<p align="center">
Dashboard: OFFENCE <br/>

<br/>
<img width="1279" height="823" alt="Screenshot (556)" src="https://github.com/user-attachments/assets/ca1ae553-22c9-4d32-b768-3dc56ceecfef" />

<br />
<br />
Dashboard: DEFENCE <br/>
<img width="1359" height="821" alt="Screenshot (558)" src="https://github.com/user-attachments/assets/b732d1a2-7b74-4421-bfe7-139df235e4b2" />

<br />

<br />
OFFENCE: Effeciency Trend tracked using True Shooting % <br/>
<img width="1227" height="825" alt="Screenshot (560)" src="https://github.com/user-attachments/assets/8bfffcd0-87e9-433d-be9c-eb7912b117f2" />

<br />

<br />
OFFENCE: Scoring Volume tracked meaasure TS% by FG Attempts Effeciency Trend with the parameters as tooltip <br/>
<img width="1231" height="815" alt="Screenshot (561)" src="https://github.com/user-attachments/assets/24c9bcc0-0daa-4365-b815-b4f6b015f8fa" />


<br />

<br />
OFFENCE: Composition of Shots <br/>
<img width="1229" height="830" alt="Screenshot (562)" src="https://github.com/user-attachments/assets/b250ba35-da47-4837-8018-daad3e64b90f" />

<br />

<br />
OFFENCE: Tracking Playmaking <br/>
<img width="1220" height="821" alt="Screenshot (564)" src="https://github.com/user-attachments/assets/8a1e6816-ef75-49da-aa80-105027cf4291" />

<br />

<br />
OFFENCE: Measuring Game Score with the parameters as tooltip <br/>
<img width="1221" height="910" alt="Screenshot (570)" src="https://github.com/user-attachments/assets/f11f0db6-b0bc-41c7-828f-87fe963110ee" />

<br />




<br />
Adjusting the scale for Recency of purchase: <br/>
<img width="1223" height="808" alt="Screenshot (551)" src="https://github.com/user-attachments/assets/25a50491-3651-4a42-b204-5eec9090de06" />
<br />
<br />
Adjusting the scale for Frequency of purchase:  <br/>
<img width="1217" height="808" alt="Screenshot (552)" src="https://github.com/user-attachments/assets/5c7733d4-439a-4334-b783-7260592b41a6" />
<br />
<br />
Adjusting the scale for Monetary Value of purchase:  <br/>
<img width="1227" height="814" alt="Screenshot (553)" src="https://github.com/user-attachments/assets/ab80cf98-7bab-4037-836d-608ae3b2e8ce" />
<br />

<!--
 ```diff
- text in red
+ text in green
! text in orange
# text in gray
@@ text in purple (and bold)@@
```
--!>
