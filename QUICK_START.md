# 🚀 Quick Start Guide - E-commerce Sales Dashboard

## ⚡ 5-Minute Setup

### Step 1: Setup Environment (2 minutes)
```bash
# Navigate to project directory
cd "E-commerce Sales"

# Run automated setup (Windows)
setup_environment.bat

# OR manually create environment
python -m venv ecommerce_env
ecommerce_env\Scripts\activate
pip install -r requirements.txt
```

### Step 2: Process Data (2 minutes)
```bash
# Start Jupyter
jupyter notebook

# Open and run ALL cells in:
notebooks/01_comprehensive_ecommerce_analysis.ipynb
```
**⚠️ Important**: Run ALL cells to generate processed data files!

### Step 3: Launch Dashboard (1 minute)
```bash
# Ensure environment is active
ecommerce_env\Scripts\activate

# Start dashboard
streamlit run src/dashboard/app.py
```

**🎉 Done!** Dashboard opens at: http://localhost:8501

---

## 📋 Verification Checklist

After setup, verify these work:

- [ ] ✅ Dashboard loads without errors
- [ ] 📊 Overview page shows metrics
- [ ] 📈 Sales charts display properly  
- [ ] 👥 Customer segmentation works
- [ ] 🔮 Predictive analytics shows forecasts

---

## 🆘 Quick Troubleshooting

**Dashboard won't start?**
```bash
pip install streamlit --force-reinstall
```

**Data not found errors?**
- Run the Jupyter notebook first
- Check `data/processed/` folder exists

**Import errors?**
```bash
pip install -r requirements.txt --force-reinstall
```

---

## 🎯 What You'll Get

### 📊 Interactive Dashboard
- **4 Main Pages**: Overview, Sales Analysis, Customer Segmentation, Predictive Analytics
- **Real-time Metrics**: Revenue, orders, customers, AOV
- **Visual Analytics**: Charts, graphs, segment analysis

### 🤖 Machine Learning Models  
- **Sales Forecasting**: 30-day revenue predictions
- **Customer Churn**: Risk assessment with 75%+ accuracy
- **RFM Segmentation**: 8 customer segments identified

### 📈 Business Insights
- **Top Products**: Revenue drivers identification
- **Customer Lifetime Value**: Segment-based CLV
- **Growth Analysis**: Monthly trends and patterns

---

## 🏆 Portfolio Ready

This project demonstrates:
- **Data Science Pipeline**: End-to-end analytics workflow
- **Machine Learning**: Classification and regression models  
- **Web Development**: Interactive Streamlit dashboard
- **Business Intelligence**: Actionable insights and KPIs

**Perfect for showcasing in interviews, LinkedIn, and GitHub portfolio!**

---

**⏱️ Total Setup Time**: ~5 minutes  
**💻 Tech Stack**: Python, Pandas, Scikit-learn, Streamlit, Plotly  
**📊 Dataset**: 500K+ e-commerce transactions  
**🎯 Business Value**: Customer segmentation, churn prediction, sales forecasting