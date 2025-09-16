--- 
title: vw_reports_timeseries
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_reports_timeseries
  - front_door
  - azure
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure resources using SQL
custom_edit_url: null
image: /img/stackql-azure-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_reports_timeseries</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_reports_timeseries</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.front_door.vw_reports_timeseries" /></td></tr>
</tbody></table>

## Fields

See the SQL Definition (view DDL) for fields returned by this view.

## SQL Definition

<Tabs
defaultValue="Sqlite3"
values={[
{ label: 'Sqlite3', value: 'Sqlite3' },
{ label: 'Postgres', value: 'Postgres' }
]}
>
<TabItem value="Sqlite3">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.endpoint') as "endpoint",
JSON_EXTRACT(properties, '$.startDateTimeUTC') as "start_date_time_utc",
JSON_EXTRACT(properties, '$.endDateTimeUTC') as "end_date_time_utc",
JSON_EXTRACT(properties, '$.aggregationInterval') as "aggregation_interval",
JSON_EXTRACT(properties, '$.timeseriesType') as "timeseries_type",
JSON_EXTRACT(properties, '$.country') as "country",
JSON_EXTRACT(properties, '$.timeseriesData') as "timeseries_data",
subscriptionId,
resourceGroupName,
profileName,
experimentName,
startDateTimeUTC,
endDateTimeUTC,
aggregationInterval,
timeseriesType
FROM azure.front_door.reports_timeseries
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND profileName = 'replace-me' AND experimentName = 'replace-me' AND startDateTimeUTC = 'replace-me' AND endDateTimeUTC = 'replace-me' AND aggregationInterval = 'replace-me' AND timeseriesType = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
json_extract_path_text(properties, '$.endpoint') as "endpoint",
json_extract_path_text(properties, '$.startDateTimeUTC') as "start_date_time_utc",
json_extract_path_text(properties, '$.endDateTimeUTC') as "end_date_time_utc",
json_extract_path_text(properties, '$.aggregationInterval') as "aggregation_interval",
json_extract_path_text(properties, '$.timeseriesType') as "timeseries_type",
json_extract_path_text(properties, '$.country') as "country",
json_extract_path_text(properties, '$.timeseriesData') as "timeseries_data",
subscriptionId,
resourceGroupName,
profileName,
experimentName,
startDateTimeUTC,
endDateTimeUTC,
aggregationInterval,
timeseriesType
FROM azure.front_door.reports_timeseries
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND profileName = 'replace-me' AND experimentName = 'replace-me' AND startDateTimeUTC = 'replace-me' AND endDateTimeUTC = 'replace-me' AND aggregationInterval = 'replace-me' AND timeseriesType = 'replace-me';
```

</TabItem>
</Tabs>
