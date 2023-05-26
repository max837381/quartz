---
---

*How heavily should we tax top income?*

## Tax Policy and the nature of high incomes

#### Income taxes in the U.S.

* The U.S. derived 48% of federal revenue from taxing family income in 2017

Calculation of tax base:

* Start with cash income from all sources.
* Subtract off adjustments (contributions to health savings accounts and individual retirement accounts, student loan interest, alimony, among others = **Adjusted Gross Income**)
* **Taxable income** = AGI - (Exemptions + Deductions)
* Not included in the income definition: Fringe benefits such as health insurance and pension contributions, unrealized capital gains, imputed rent from homeownership

##### Exemptions and Deductions:

Exemption: Set amount per household member
Deductions: Taxpayerchooses one 

\#todo 

## Theory

#### Linear Tax

Revenue maximizing rate

z

t - linear tax rate

Tax bill:
T(z) = t\*z

y = z - T(z) = (1-t)Z

**Marginal tax rate:**
T'(z) = t

**Average tax rate**
T/z = t

R = tz(1-t)

dR/dt = Z(1-t) - tdz/d(1-t) = 0

1 - t(1/z) dz/d(1-t) = 0

1 - t/1-t * 1-t/z * dz/d1-t = 0

1 - t/1/t \epsilon_z = 0

t/1-t \epsilon_z = 1

t * \epsilon_z = 1 - t

t + t \epsilon_z = 1

t = 1/1+/epsilon_z

Laffer Curve:

![laffer curve.png](Image%20Bank/laffer%20curve.png)

![Pasted image 20230420125455.png](Image%20Bank/Pasted%20image%2020230420125455.png)

## Optimal Taxes

#### Linear taxes

Social Welfare Function

$$\Large SWF = \sum_i U_i$$

$$\Large tz_i = \text{Tax raised from i}$$

$$\Large Rev = \sum_i tz_i$$
Benefit (B) = Rev/N = (t * sum z_i)/n

![Pasted image 20230420130447.png](Image%20Bank/Pasted%20image%2020230420130447.png)

$$\Large u(C) = u (z_i -t z_i + t \bar z) = u((1-t)z_i + t \bar z)$$

$$\Large \Omega = \sum_i u((1-t)z_i + t \bar z) $$

Above ^ everything beyond the sum symbol is maximized utility

d \omega / dt = 0 = $$\Large  \sum_i du/dc (-z_i + \bar z - t d\bar z/d(1-t)) $$
= - \sum Mu_i Z_i + \bar z \sum_i Mu_i - t d \bar z / d(1-t) \sum mu_i

## Evidence

---

## Optimal top marginal tax rate

* In practice the tax system is progressive, and t increases with income
* Deriving full schedule is extraordinarily difficult. Simplify by asking how to set tax at the top tax bracket?
* Intuition of approach: Increase in marginal tax rate for incomes above z\* has opposing effects on social welfare:
  * Marginal cost: Two sources: 
    * 
      1. Less tax revenue from reduced earnings by individuals with incomes in top bracket
    * 
      2. Reduced utility for high-income (let's assume this is small)
  * Marginal benefit: Additional tax revenue that can be redistributed
* Optimal tax rate equals marginal cost with marginal benefit

Assume:

* N individuals above z\*
* Denote by $\large z^m(1-t)$ their average income, which depends on net-of-tax rate 1-t
* Mechanical (not as a consequence of behavioral response) increase in tax revenue
  $$\Large dM = \[z-z^\*]dt$$
* Behavioral response reduces tax revenue:
  $$\Large dB = tdz = -t \frac{dz}{d(1-t)dt} = -\frac{t}{1-t}\epsilon_zzdt$$
* Optimal t such that dM + dB = 0
  $$\Large t = \frac{1}{1+a \epsilon_Z}$$
  where $\Large a = \frac{z}{z-z^\*}$

a - depends on how high their incomes are on average above z\*

* Optimal t decreases with $\Large \epsilon_Z$ (efficiency)
* Optimal t decreases with a (thinness of top tail)
* This tax rate maximizes revenue from the top (places zero weight on impact of taxes on high earner's consumption)
* Empirically, a $\large \approx$ 1.5 #todo

## Empirical Approach

* Assume that e is constant over time and across taxpayers
* Let $\large z_0$ be potential income. Then reported income $\large z = (1-\tau)^e z_0$
* Take logs, and including subscript i and t for individual and time period:
  $$\Large log(z\_{it}) = elog(1-\tau\_{it}) + Z_0$$
  * Suggests regressing the log of taxable income on the log of the net-of-tax rate
  * Problem: not identified using [Ordinary Least Squares](Ordinary%20Least%20Squares.md) because $\large \tau$ endogenously determined by z/
  * Need [Instrumental Variable](Instrumental%20Variable.md) for tax rate. Common approach is to use variation in $\large \tau$ arising from tax reform

## Share Analysis

* Consider a tax change only affecting the top 1% of taxpayers, with no change for other levels of income
* The elasticity of reported income, with $\large t_0$ and $\large t_1$ pre- and post-reform years
  $$\Large e = \frac{log(s\_{t1}) - log(s\_{t0})}{log(1-\tau\_{s,t1}) - log(1-\tau\_{s,t_0})}$$
* where $\large s_t$ is the share of income earned by the top 1%
* $\large \tau\_{s,t}$ is the weighted average marginal tax rate faced by this income group
* Assumption: Share earned by top 1% would be unchanged if not for tax
* Or could estimate time series regressionL
  $$\Large log(s_t) = elog(1-\tau\_{st}) + \epsilon_t$$
