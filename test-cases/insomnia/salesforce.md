curl -k --request POST \
  --url https://10.80.228.23:443/services/apexrest/UpsertPassenger \
  --header 'Authorization: Bearer 00D1y0000008qZg!AQEAQC.cJx6FbMquztcB12LbEohCTGNxlByjhWaZuqxtPx98ojgUG7EJHcNdCCzdwpBt6Q8VAKpC4tckCM6cyEXuEY7EK9i9' \
  --header 'Content-Type: application/json' \
  --header 'Accept: application/json' \
  --header 'Host: thaiairway2--tgsandbox.sandbox.my.salesforce.com' \
  --data '[

    {

        "Salutation": "MR",

        "PNR_Number": "6UOLWW",

        "Create_PNR": false,

        "Purge_Date": "2023-03-30",

        "UCI": "7777",

        "First_Name": "SARAN",

        "Last_Name": "NOPSUWAN",

        "Name": "NOPSUWAN SARAN MR",

        "Office_ID": "BKKTG0119",

        "Full_Name": "WHITE ORCHID MR",

        "Date_of_Birth": "1996-01-13",

        "ROP_Number": "MK21372",

        "ROP_Tier": "BASE",

        "APE": "WICK@MAIL.COM"

    },

    {

        "Salutation": "MS",

        "PNR_Number": "6UOLWW",

        "Create_PNR": false,

        "Purge_Date": "2023-03-30",

        "UCI": "8888",

        "First_Name": "SIREE",

        "Last_Name": "NOPSUWAN",

        "Name": "NOPSUWAN SIREE MR",

        "Office_ID": "BKKTG0119",

        "Full_Name": "NOPSUWAN SIREE MS",

        "Date_of_Birth": "1990-05-22",

        "ROP_Number": "MK21123",

        "ROP_Tier": "BASE",

        "APE": "WICK@MAIL.COM"



    }

] '
