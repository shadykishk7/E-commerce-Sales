@echo off
echo 🚀 E-commerce Sales Dashboard - Environment Setup
echo ================================================

echo.
echo 📦 Creating virtual environment...
python -m venv ecommerce_env

echo.
echo 🔧 Activating virtual environment...
call ecommerce_env\Scripts\activate.bat

echo.
echo 📥 Installing dependencies...
pip install --upgrade pip
pip install -r requirements.txt

echo.
echo 🔗 Setting up Jupyter kernel...
python -m ipykernel install --user --name=ecommerce_env --display-name="E-commerce Analysis"

echo.
echo ✅ Setup complete!
echo.
echo 🎯 Next steps:
echo 1. Run: ecommerce_env\Scripts\activate
echo 2. Run: jupyter notebook
echo 3. Open: notebooks/01_comprehensive_ecommerce_analysis.ipynb
echo.
pause