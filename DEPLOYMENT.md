# E-commerce Sales Dashboard - Deployment Guide

## 🚀 Quick Start Guide

### Prerequisites
- Python 3.8+ installed
- Git (optional but recommended)
- 4GB+ RAM recommended
- Internet connection for package installation

### 1. Environment Setup

#### Option A: Automated Setup (Windows)
```bash
# Clone or download the project
cd "E-commerce Sales"

# Run the automated setup script
setup_environment.bat
```

#### Option B: Manual Setup
```bash
# Create virtual environment
python -m venv ecommerce_env

# Activate environment (Windows)
ecommerce_env\Scripts\activate

# Activate environment (macOS/Linux)
source ecommerce_env/bin/activate

# Install dependencies
pip install --upgrade pip
pip install -r requirements.txt

# Setup Jupyter kernel
python -m ipykernel install --user --name=ecommerce_env --display-name="E-commerce Analysis"
```

### 2. Data Processing

#### Run the Analysis Notebook
```bash
# Start Jupyter
jupyter notebook

# Open and run all cells in:
notebooks/01_comprehensive_ecommerce_analysis.ipynb
```

**Important**: The notebook will:
- Load and clean the raw data
- Perform feature engineering
- Train machine learning models
- Generate processed datasets for the dashboard

### 3. Launch Dashboard

```bash
# Activate environment if not already active
ecommerce_env\Scripts\activate

# Launch Streamlit dashboard
streamlit run src/dashboard/app.py
```

The dashboard will open in your browser at: `http://localhost:8501`

## 📊 Dashboard Features

### Overview Page
- **Key Metrics**: Total revenue, orders, customers, AOV
- **Sales Trends**: Monthly revenue, orders, and customer trends
- **Revenue Distribution**: Histogram of transaction values

### Sales Analysis Page
- **Date Range Filtering**: Customize analysis period
- **Top Products**: Best performing products by revenue
- **Interactive Charts**: Drill-down capabilities

### Customer Segmentation Page
- **RFM Analysis**: Customer segmentation visualization
- **Segment Distribution**: Pie chart of customer segments
- **Segment Characteristics**: Average monetary value by segment

### Predictive Analytics Page
- **Sales Forecasting**: 30-day revenue predictions
- **Churn Risk Assessment**: Customer retention insights

## 🔧 Troubleshooting

### Common Issues

#### 1. Import Errors
```bash
# Ensure virtual environment is activated
ecommerce_env\Scripts\activate

# Reinstall dependencies
pip install -r requirements.txt --force-reinstall
```

#### 2. Data Not Found Errors
- Run the Jupyter notebook first to generate processed data
- Check that all notebook cells executed successfully
- Verify files exist in `data/processed/` directory

#### 3. Dashboard Won't Start
```bash
# Check Streamlit installation
pip show streamlit

# Try running with verbose output
streamlit run src/dashboard/app.py --logger.level=debug
```

#### 4. Memory Issues
- Close other applications
- Use smaller data samples for testing
- Consider using a machine with more RAM

### Performance Optimization

#### Data Loading
- Processed data files are cached by Streamlit
- First load may be slow, subsequent loads are faster
- Consider using data sampling for development

#### Dashboard Responsiveness
- Charts are optimized for web display
- Large datasets may cause initial loading delays
- Use date filters to reduce data volume

## 🌐 Cloud Deployment

### Streamlit Cloud (Recommended)

1. **Push to GitHub**
```bash
git init
git add .
git commit -m "Initial commit"
git remote add origin YOUR_GITHUB_REPO_URL
git push -u origin main
```

2. **Deploy to Streamlit Cloud**
- Visit [share.streamlit.io](https://share.streamlit.io)
- Connect your GitHub repository
- Select `src/dashboard/app.py` as the main file
- Click "Deploy"

3. **Configuration**
Create `secrets.toml` if needed:
```toml
# .streamlit/secrets.toml
[general]
data_path = "data/processed/"
```

### Heroku Deployment

1. **Create Heroku Files**

`Procfile`:
```
web: streamlit run src/dashboard/app.py --server.port=$PORT --server.address=0.0.0.0
```

`runtime.txt`:
```
python-3.9.16
```

2. **Deploy**
```bash
# Install Heroku CLI
# Create Heroku app
heroku create your-app-name

# Deploy
git push heroku main
```

### Docker Deployment

1. **Create Dockerfile**
```dockerfile
FROM python:3.9-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8501

CMD ["streamlit", "run", "src/dashboard/app.py", "--server.address=0.0.0.0"]
```

2. **Build and Run**
```bash
# Build image
docker build -t ecommerce-dashboard .

# Run container
docker run -p 8501:8501 ecommerce-dashboard
```

## 📝 Maintenance

### Regular Updates
- Monitor dashboard performance
- Update data regularly
- Retrain models monthly
- Check for security updates

### Monitoring
- Track user engagement
- Monitor server resources
- Log error rates
- Performance metrics

### Backup Strategy
- Regular data backups
- Model versioning
- Configuration backups
- Code repository maintenance

## 🔐 Security Considerations

### Data Protection
- Anonymize customer data
- Implement access controls
- Use HTTPS in production
- Regular security audits

### Environment Variables
```bash
# Set production variables
export ENVIRONMENT=production
export DEBUG=False
export LOG_LEVEL=INFO
```

## 📈 Scaling Considerations

### Performance Optimization
- Database integration for large datasets
- Caching strategies
- Load balancing
- CDN for static assets

### Infrastructure
- Auto-scaling capabilities
- Database clustering
- Redis for caching
- Monitoring and alerting

## 🆘 Support

### Getting Help
1. Check the troubleshooting section
2. Review error logs
3. Consult the documentation
4. Contact project maintainer

### Useful Commands
```bash
# Check environment
pip list

# View logs
streamlit run src/dashboard/app.py --logger.level=debug

# Test installation
python tests/test_setup.py

# Clear cache
streamlit cache clear
```

## 📚 Additional Resources

- [Streamlit Documentation](https://docs.streamlit.io)
- [Plotly Documentation](https://plotly.com/python/)
- [Pandas Documentation](https://pandas.pydata.org/docs/)
- [Scikit-learn Documentation](https://scikit-learn.org/stable/)

---

**Last Updated**: $(date)  
**Version**: 1.0.0  
**Contact**: [Your Email]