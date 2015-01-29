using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Laboration_2_Asp.Model
{
    public static class Receipt
    {
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
        public double DiscountRate
        {
            get
            {
                
            }
            set
            {

            }
        }

        public double MoneyOff
        {
            get
            {

            }
            set
            {

            }
        }
        public double SubTotal
        {
            get
            {

            }
            set
            {

            }
        }
        public double Total
        {
            get
            {

            }
            set
            {

            }
        }
        public static void Calculate(double subtotal)
        {

        }

        public static Receipt(double subtotal)
        {

        }
    }
}