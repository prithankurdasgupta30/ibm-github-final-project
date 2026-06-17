# Simple Interest Calculator

A lightweight, interactive Python command-line tool that calculates simple interest and total final balances based on user input.

## Features

- **Interactive CLI**: Prompts users for financial inputs directly in the terminal.
- **Accurate Calculations**: Handles decimal values for precise financial tracking.
- **Robust Error Handling**: Prevents program crashes if a user enters non-numerical text.
- **Clean Formatting**: Outputs currency figures formatted to two decimal places with comma separators.

## How It Works

The application calculates simple interest using the standard financial formula:

\[\text{Simple Interest} = \frac{P \times R \times T}{100}\]

Where:
- \(P\) = Principal amount (the initial sum of money)
- \(R\) = Annual interest rate (percentage)
- \(T\) = Time period (in years)

## Prerequisites

To run this script, you only need:
- **Python 3.x** installed on your system.

## How to Run

1. **Clone or Download the Repository**
   ```bash
   git clone https://github.com
   cd simple-interest-calculator
   ```

2. **Run the Script**
   Execute the file directly using your terminal or command prompt:
   ```bash
   python interest_calculator.py
   ```

## Example Usage

```text
=== Simple Interest Calculator ===
Enter the principal amount (\$): 10000
Enter the annual interest rate (%): 5.5
Enter the time period (in years): 3

--- Results ---
Principal Amount: \$10,000.00
Interest Earned:  \$1,650.00
Total Balance:    \$11,650.00
```

## License

This project is open-source and available under the [MIT License](LICENSE).
