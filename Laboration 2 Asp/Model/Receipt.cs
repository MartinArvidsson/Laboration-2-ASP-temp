using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Laboration_2_Asp.Model
{
    public  class Receipt
    {

        private double _Subtotal;

 /*       public static float CalculateDiscount(float input)
        {
            float priceBeforeDiscount = input; //Priset innan några ändringar görs med den
            float PercentageOff = 0; //Antal % rabatt
            float PriceAfterPercentage; // Priset efter att man har dragit av rabatten
            

            if(input > 0 && input < 500)
            {
                PercentageOff = 0;
            }
            if (input > 499 && input < 1000)
            {
                PercentageOff = 0.05F;
                PriceAfterPercentage = input * PercentageOff;
            }
            if (input > 999 && input < 5000)
            {
                PercentageOff = 0.10F;
                PriceAfterPercentage = input * PercentageOff;
            }
            if (input > 4999)
            {
                PercentageOff = 0.15F;
                PriceAfterPercentage = input * PercentageOff;
            }


            return PercentageOff;
        }*/
        public Receipt(double subtotal)
        {
            Calculate(subtotal);
        }

        public void Calculate(double subtotal)
        {
            SubTotal = subtotal;

            if (subtotal > 0 && subtotal < 500)
            {
                DiscountRate = 0;
            }
            if (subtotal > 499 && subtotal < 1000)
            {
                DiscountRate = 0.05;
                
            }
            if (subtotal > 999 && subtotal < 5000)
            {
                DiscountRate = 0.10;
                
            }
            if (subtotal > 4999)
            {
                DiscountRate = 0.15;
                
            }
            MoneyOff = DiscountRate * subtotal;
            Total = subtotal - MoneyOff;
        }
        public double DiscountRate
        {
            get;
            private set;
        }

        public double MoneyOff
        {
            get;
            private set;
        }
        public double SubTotal
        {
            get
            {
                return _Subtotal;
            }
            set
            {
                if(value <= 0 )
                {
                    throw new ArgumentOutOfRangeException();
                }
                else
                {
                    _Subtotal = value;
                }
            }
        }
        public double Total
        {
            get;
            private set;
        }
    }
}