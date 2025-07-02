# USDA SQL Agricultural Production Analysis Project

This project involves working with agricultural datasets sourced from the **United States Department of Agriculture (USDA)** Open Data Portal.
The purpose is to apply SQL to analyze state-wise production data across different agricultural commodities for various years.

---

## 📊 Project Overview

- Analyze trends in milk, cheese, yogurt, coffee, and honey production
- Identify high-performing states
- Join datasets and filter meaningful subsets
- Compute totals, averages, and detect missing data

---

## 📁 Project Structure

```text
coursera_project/
├── Coursera Project.sql            # SQL queries for all 10 questions
├── milk production.csv             # Milk production by state/year
├── cheese production.csv           # Cheese production (monthly or yearly)
├── coffoee production.csv          # Coffee production (likely a typo)
├── egg production.csv              # Extra dataset (not used directly)
├── honey production.csv            # Honey production by state/year
├── yougart.csv                     # Yogurt production (misspelled, should be yogurt)
├── state production.csv            # Overall state-wise production
├── README.md                       # This file

---

## SQL Questions and Answers

This section contains the SQL-based questions given as part of the Coursera/USDA project, along with the correct answers derived from SQL queries.

###  Question 1
**Can you find out the total milk production for 2023?**  
**Answer:** `91812000000`  

---

###  Question 2  
**Which states had cheese production greater than 100 million in April 2023?**  
**How many states are there?**  
**Answer:** `2`  

---

###  Question 3  
**What is the total value of coffee production for 2011?**  
**Answer:** `7600000`  

---

###  Question 4  
**Find the average honey production for 2022.**  
**Answer:** `3133275`  

---

###  Question 5  
**What is the State_ANSI code for Florida?**  
**Answer:** `12`  

---

###  Question 6  
**What is the total cheese production for NEW JERSEY in April 2023 (include 0 if none)?**  
**Answer:** `2069941000`  

---

###  Question 7  
**Find the total yogurt production for states in 2022 which also have cheese data from 2023.**  
**Answer:** `1171095000`  

---

###  Question 8  
**How many states from state_lookup are missing from milk_production in 2023?**  
**Answer:** `50`  

---

###  Question 9  
**Did Delaware produce any cheese in April 2023?**  
**Answer:** `No`  

---

###  Question 10  
**Find the average coffee production for all years where the honey production exceeded 1 million.**  
**Answer:** `6426666.67`  
