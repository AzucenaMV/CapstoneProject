# CapstoneProject

## Data Sources

| Dataset                                                      | Description                                        | end date |
| ------------------------------------------------------------ | -------------------------------------------------- | -------- |
| [WRDS-Compustat](https://wrds-web.wharton.upenn.edu/wrds/query_forms/navigation.cfm?navId=83) |                                                    | 2019-06  |
| [Compustat-Industry Specific Quarterly](https://wrds-web.wharton.upenn.edu/wrds/ds/compd/industry/quarterly.cfm?navId=83) | industry specific indicators                       | 2019-06  |
| [Compustat-Fundamentals Quarterly](https://wrds-web.wharton.upenn.edu/wrds/ds/compd/fundq/index.cfm?navId=83) | Fundamentals (EPS, ) on financial statements       | 2019-06  |
| [Compustat-Security Daily](https://wrds-web.wharton.upenn.edu/wrds/ds/compd/secd/index.cfm?navId=83) | stock price(low, high, open, close), volumes, etc. | 2019-10  |



## SP500 Airline Companies

Five Airline companies taken into consideration: 

| Symbol                                     | company name                                                 | sec cik    |
| ------------------------------------------ | ------------------------------------------------------------ | ---------- |
| [ALK](https://www.nyse.com/quote/XNYS:ALK) | [Alaska Air Group Inc](https://en.wikipedia.org/wiki/Alaska_Air_Group_Inc) | 0000766421 |
| [AAL](http://www.nasdaq.com/symbol/aal)    | [American Airlines Group](https://en.wikipedia.org/wiki/American_Airlines_Group) | 0000006201 |
| [DAL](https://www.nyse.com/quote/XNYS:DAL) | [Delta Air Lines Inc.](https://en.wikipedia.org/wiki/Delta_Air_Lines_Inc.) | 0000027904 |
| [LUV](https://www.nyse.com/quote/XNYS:LUV) | [Southwest Airlines](https://en.wikipedia.org/wiki/Southwest_Airlines) | 0000092380 |
| [UAL](http://www.nasdaq.com/symbol/ual)    | [United Airlines Holdings](https://en.wikipedia.org/wiki/United_Airlines_Holdings) | 0000100517 |

Reference: https://en.wikipedia.org/wiki/List_of_S%26P_500_companies



## Y vaiable

**Stock Returns** 

The price of a common share of stock in the company, as reported by the Nasdaq, American Stock Exchange, or New York Stock Exchange. If the market is open, the price is updated throughout the day. If the market closed, the price is the clossing price from the previous day.



## X variables

###1 Economic Indicators

We pick **one** indicator under each category

![](https://www2.deloitte.com/content/dam/insights/us/articles/5109_USEF_2019_Q3/figures/5109_fig18.png)

Reference: [United States Economic Forecast - Deloitte](https://www2.deloitte.com/us/en/insights/economy/us-economic-forecast/united-states-outlook-analysis.html)



### 2 Industry Specific Indicators

|                                    | Description |
| ---------------------------------- | ----------- |
| **Avg Fuel Price / Gallon**        |             |
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

|                                | Description                                                  |
| ------------------------------ | ------------------------------------------------------------ |
| **Price/Earnings (P/E) Ratio** | A comparison of a company's current share price to its earnings per share during a specified time period. The higher the P/E Ratio, the more the market is willing to pay for each dollar of annual earnings. Companies with negative earnings do not have a P/E Ratio. |
| **Enterpirce Value**           | A measure of a company's value, often used as an alternative to straightforward market capitalization. Enterprise value is calculated by adding the market value of the company's outstanding common stock shares plus debt, minority interest and preferred shares, minus total cash and cash equivalents. It is sometimes thought of as a company's theoretical takeover price because a buyer often becomes responsible for the company's debt, but would get to keep its cash. |
| **EPS**                        | The net income available for the common stock, divided by the number of outstanding shares. |
| **EPS Growth**                 | Earnings per share (EPS) growth can be analyzed as actual historical data or as estimated growth based on analyst projections. |
| **Revenue**                    | Total goods and/or services sold by a company (also referred to as Total Net Sales) during a specified time period. Revenue is a result of the normal operations of the company. In cases where a divestiture or sale has occurred, the effect of the transaction would also be reflected in revenue. |
| **Revenue Growth**             | A measure (percent) of how much more (or less) the company has sold during a specified time period. |
| **Return on Equity (ROE)**     | Return on Equity measures how well a company uses reinvested earnings to generate additional earnings. ROE is calculated by dividing a company's after-tax income by [Shareholder's Equity](https://www.fidelity.com//webcontent/ap010098-etf-content/19.10.0/help/research/learn_er_glossary_4.shtml#shareholdersequity) for a specified period, expressed as a percentage. |
| **Return on Investment (ROI)** | Return on Investment measures how effectively a company uses its capital to generate profit. ROI is calculated by dividing income by common stock and preferred stock equity plus long-term debt over a specified time period. Time periods measured include: |

Reference: [Industry Details - Fidelity]( https://eresearch.fidelity.com/eresearch/markets_sectors/sectors/industries.jhtml?tab=learn&industry=203020)

