### What does this Block do for me?
[Funnel](https://funnel.io) takes messy, siloed data from all marketing platforms and automatically generates Business-Ready Data that is fully harmonized, up-to-date and always ready to act upon. Funnel doesn’t require any coding or manual maintenance, which gives you point-and-click control to continuously experiment with new data sources, business logic and tactics without ever breaking the data model.

The Funnel service provides:
- Hundreds of existing marketing sources, and custom sources as part of your enterprise subscription
- Default normalization and mapping of columns like campaign, cost, impressions, clicks
- Initial clean-up and custom grouping to prepare the data for you Looker views
- Funnel compensates for ad platforms that are eventually consistent, with historic data changing for multiple reasons
- Integrations adjust for quotas, rate limits, retries, temporary errors
- Allow your marketing department to manage addition of new ad accounts as well as token and password changes

### Block Info
This Block will work as configured with your own marketing data using Funnels data warehouse export. It has been tested with BigQuery Standard SQL dialect but should be usable for any Data Warehouse, perhaps with some small edits needed.

Make sure you're Funnel export include our normalised fields Cost, Clicks, Impressions, Date, Traffic Source, Media Type, Paid/Organic, Ad Group, Ad and Keyword.

### Block Structure
This Block contains a Looker View defining the normalised fields and a simple Model.
An Advertising Pulse dashboard which give you a great starting point to visualise your marketing data in Looker. It gives you:
- An overview of cross-channel KPIs such as Cost, Clicks, Impressions, CPC, CPM and CTR
- Cost broken down by Traffic Source, Media type and individual Campaigns
- Keyword performance

### Implementation Instructions

1. Go to your Funnel account (Not already a Funnel customer? Get started [here](https://funnel.io/looker))
2. Setup a Data Warehouse export to your desired destination, make sure you include all the normalised fields mentioned above
3. If you havent already, [create a databse connection in Looker](https://docs.looker.com/setup-and-management/connecting-to-db) to the destination
4. Copy the View, Model and Dashboard LookML files from this block into Looker
5. Change the connection name in the Model file to match your connection

### Customizations
You can generate your custom LookML to match your own Funnel schema, using the "View LookML" feature in the Funnel app.

### Need help?
Please contact support@funnel.io for any questions or feedback relating to this block or anything else!
