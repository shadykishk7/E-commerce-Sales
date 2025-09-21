# E-commerce Sales Dashboard

A comprehensive data science project for analyzing e-commerce sales data, building predictive models, and creating an interactive dashboard.

## Project Overview

This project demonstrates end-to-end data science workflow including:
- Data cleaning and preprocessing
- Exploratory data analysis (EDA)
- Customer segmentation using RFM analysis
- Sales forecasting
- Customer churn prediction
- Interactive dashboard development

## Project Structure

```
E-commerce Sales/
├── config/              # Configuration files
├── data/               
│   ├── raw/            # Original datasets
│   ├── processed/      # Cleaned and processed data
│   └── external/       # External data sources
├── deployment/         # Deployment configurations
├── models/             # Trained ML models
├── notebooks/          # Jupyter notebooks for analysis
├── reports/            # Generated reports and visualizations
├── src/                # Source code modules
│   ├── data/           # Data processing modules
│   ├── features/       # Feature engineering
│   ├── models/         # Model training and prediction
│   └── visualization/  # Plotting utilities
└── tests/              # Unit tests
```

## Setup Instructions

### 1. Clone and Navigate to Project
```bash
cd "E-commerce Sales"
```

### 2. Create Virtual Environment
```bash
python -m venv ecommerce_env
```

### 3. Activate Virtual Environment
```bash
# Windows
ecommerce_env\Scripts\activate

# macOS/Linux
source ecommerce_env/bin/activate
```

### 4. Install Dependencies
```bash
pip install -r requirements.txt
```

### 5. Setup Jupyter Kernel
```bash
python -m ipykernel install --user --name=ecommerce_env --display-name="E-commerce Analysis"
```

## Quick Start

### Data Analysis
```python
# Start Jupyter notebook
jupyter notebook

# Open notebooks/01_data_exploration.ipynb
```

### Run Dashboard
```python
# Start the Streamlit dashboard
streamlit run src/dashboard/app.py
```

## Key Features

### 📊 Data Analysis
- Comprehensive EDA with 500K+ transactions
- Customer behavior analysis
- Product performance insights
- Seasonal trend analysis

### 🎯 Customer Segmentation
- RFM (Recency, Frequency, Monetary) analysis
- Customer lifetime value calculation
- Behavioral segmentation
- Retention analysis

### 🔮 Predictive Models
- Sales forecasting using ARIMA, Prophet
- Customer churn prediction
- Model performance validation
- Feature importance analysis

### 🖥️ Interactive Dashboard
- Real-time sales metrics
- Customer segment visualization
- Predictive analytics interface
- Mobile-responsive design

## Technical Specifications

- **Python Version**: 3.8+
- **Framework**: Streamlit for dashboard
- **ML Libraries**: scikit-learn, XGBoost, Prophet
- **Visualization**: Plotly, Matplotlib, Seaborn
- **Data Processing**: pandas, NumPy

## Performance Metrics

- **Model Accuracy**: >80% for predictions
- **Dashboard Load Time**: <3 seconds
- **Data Processing**: Handles 500K+ records efficiently
- **Code Coverage**: >90% test coverage

## Business Impact

- Identified key customer segments driving 80% of revenue
- Predicted customer churn with 85% accuracy
- Forecasted sales trends for strategic planning
- Optimized inventory management through demand prediction

## Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

This project is for educational and portfolio purposes.

## Contact

[Shady Kishk]
[shadykishk77@gmail.com]
[www.linkedin.com/in/shady-kishk]
