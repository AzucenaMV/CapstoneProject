# CapstoneProject

## Data Sources

| Dataset                                                      | Description                                        | Frequency |
| ------------------------------------------------------------ | -------------------------------------------------- | --------- |
| [FRED](https://fred.stlouisfed.org)                          | Economic Indicators                                |           |
| [Compustat-Industry Specific](https://wrds-web.wharton.upenn.edu/wrds/ds/compd/industry/quarterly.cfm?navId=83) | industry specific indicators                       | Quarterly |
| [Compustat-Fundamentals](https://wrds-web.wharton.upenn.edu/wrds/ds/compd/fundq/index.cfm?navId=83) | Fundamentals (EPS, ) on financial statements       | Quarterly |
| [Compustat-Security](https://wrds-web.wharton.upenn.edu/wrds/ds/compd/secd/index.cfm?navId=83) | stock price(low, high, open, close), volumes, etc. | Daily     |





## Airline Companies

We build two models, one for Legacy carriers, the other for Low-cost Carrier largest company. The six Airline companies we take into consideration are listed below

The variables are averaged w.r.t. market share.

**Legacy Carrier**

| Symbol                                     | company name                                                 |
| ------------------------------------------ | ------------------------------------------------------------ |
| [ALK](https://www.nyse.com/quote/XNYS:ALK) | [Alaska Air Group Inc](https://en.wikipedia.org/wiki/Alaska_Air_Group_Inc) |
| [DAL](https://www.nyse.com/quote/XNYS:DAL) | [Delta Air Lines Inc.](https://en.wikipedia.org/wiki/Delta_Air_Lines_Inc.) |
| [UAL](http://www.nasdaq.com/symbol/ual)    | [United Airlines Holdings](https://en.wikipedia.org/wiki/United_Airlines_Holdings) |

**Low-cost Carrier**

|                                            |                                                              |
| ------------------------------------------ | ------------------------------------------------------------ |
| [LUV](https://www.nyse.com/quote/XNYS:LUV) | [Southwest Airlines](https://en.wikipedia.org/wiki/Southwest_Airlines) |
| JBLU                                       | JetBlue Airways                                              |
| SAVE                                       | Spirit                                                       |

Reference: 

[List of SP500 Companies - Wikipedia](https://en.wikipedia.org/wiki/List_of_S%26P_500_companies)

[Domestic Market Share of Leading U.S. Airlines](https://www.statista.com/statistics/250577/domestic-market-share-of-leading-us-airlines/) 



## Y vaiable

**Stock Returns** 

The price of a common share of stock in the company, as reported by the Nasdaq, American Stock Exchange, or New York Stock Exchange. If the market is open, the price is updated throughout the day. If the market closed, the price is the clossing price from the previous day.





## X variables

### 1 Economic Indicators

We pick **one** indicator under each category

|                                                   | Category          | Description |
| ------------------------------------------------- | ----------------- | ----------- |
| **Real GPD**                                      | GDP               |             |
| **Consumer Price Index**                          | Prices            |             |
| **Unemployment Rate**                             | Labor Markets     |             |
| **Net Household Wealth**                          | Income and Wealth |             |
| **Interest Rate on 30-year fixed-rate mortgates** | Housing           |             |
| **Current Account Balance, share of GDP**         | Foreign Trade     |             |
| **Yield on 10-year Treasury Note**                | Financial         |             |
| **Federal  Budget Balance, share of GPD**         | Government        |             |

Reference: [United States Economic Forecast - Deloitte](https://www2.deloitte.com/us/en/insights/economy/us-economic-forecast/united-states-outlook-analysis.html)



### 2 Industry Specific Indicators

|                                    | Description |
| ---------------------------------- | ----------- |
| **Avg Fuel Price per Gallon**      |             |
| **Available Seat Kilometers**      |             |
| **Available Seat Miles (ASM)**     |             |
| **Fuel Consumed**                  |             |
| **Total Aircraft in Service**      |             |
| **Operating Expenses**             |             |
| **Passenger Load Factor**          |             |
| **Passenger Rev p / ASM**          |             |
| **Passenger Revenue**              |             |
| **Passenger Rve p  / RPM**         |             |
| **Revenue Passenger Carried**      |             |
| **Revenue Pssngr Kilometers**      |             |
| **Revenue Passanger Miles (RPMs)** |             |
| **Fuel Expense**                   |             |
| **Total Revenue p / ASMs**         |             |

Reference: [Compustat - Industry Specific Quarterly - Airline]()



### 3 Fundamentals

Used:

| Name               | Column | Description                                                  |
| ------------------ | ------ | ------------------------------------------------------------ |
| **EPS**            | EPSFXQ | EPSFXQ -- Earnings Per Share (Diluted) - Excluding Extraordinary items |
| **Revenue**        | REVTQ  | REVTQ -- Revenue - Total                                     |
| **EPS Growth**     |        |                                                              |
| **Revenue Growth** |        |                                                              |



Reference:

|                                | Description                                                  |
| ------------------------------ | ------------------------------------------------------------ |
| **Price/Earnings (P/E) Ratio** | A comparison of a company's current share price to its earnings per share during a specified time period. The higher the P/E Ratio, the more the market is willing to pay for each dollar of annual earnings. Companies with negative earnings do not have a P/E Ratio. |
| **Enterpirce Value**           | A measure of a company's value, often used as an alternative to straightforward market capitalization. Enterprise value is calculated by adding the market value of the company's outstanding common stock shares plus debt, minority interest and preferred shares, minus total cash and cash equivalents. It is sometimes thought of as a company's theoretical takeover price because a buyer often becomes responsible for the company's debt, but would get to keep its cash. |
| **EPS**                        | The net income available for the common stock, divided by the number of outstanding shares. |
| **EPS Growth**                 | Earnings per share (EPS) growth can be analyzed as actual historical data or as estimated growth based on analyst projections. |
| **Revenue**                    | Total goods and/or services sold by a company (also referred to as Total Net Sales) during a specified time period. Revenue is a result of the normal operations of the company. In cases where a divestiture or sale has occurred, the effect of the transaction would also be reflected in revenue. |
| **Revenue Growth**             | A measure (percent) of how much more (or less) the company has sold during a specified time period. |
| **Return on Equity (ROE)**     | Return on Equity measures how well a company uses reinvested earnings to generate additional earnings. ROE is calculated by dividing a company's after-tax income by [Shareholder's Equity](https://www.fidelity.com//webcontent/ap010098-etf-content/19.10.0/help/research/learn_er_glossary_4.shtml#shareholdersequity) for a specified period, expressed as a percentage. |
| **Return on Investment (ROI)** | Return on Investment measures how effectively a company uses its capital to generate profit. ROI is calculsated by dividing income by common stock and preferred stock equity plus long-term debt over a specified time period. Time periods measured include: |

Reference: [Industry Details - Fidelity]( https://eresearch.fidelity.com/eresearch/markets_sectors/sectors/industries.jhtml?tab=learn&industry=203020)



