--- 
title: vw_domains
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_domains
  - communication
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

Creates, updates, deletes, gets or lists a <code>vw_domains</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_domains</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.communication.vw_domains" /></td></tr>
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
location as location,
tags as tags,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.dataLocation') as "data_location",
JSON_EXTRACT(properties, '$.fromSenderDomain') as "from_sender_domain",
JSON_EXTRACT(properties, '$.mailFromSenderDomain') as "mail_from_sender_domain",
JSON_EXTRACT(properties, '$.domainManagement') as "domain_management",
JSON_EXTRACT(properties, '$.verificationStates') as "verification_states",
JSON_EXTRACT(properties, '$.verificationRecords') as "verification_records",
JSON_EXTRACT(properties, '$.userEngagementTracking') as "user_engagement_tracking",
subscriptionId,
resourceGroupName,
emailServiceName,
domainName
FROM azure.communication.domains
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND emailServiceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.dataLocation') as "data_location",
json_extract_path_text(properties, '$.fromSenderDomain') as "from_sender_domain",
json_extract_path_text(properties, '$.mailFromSenderDomain') as "mail_from_sender_domain",
json_extract_path_text(properties, '$.domainManagement') as "domain_management",
json_extract_path_text(properties, '$.verificationStates') as "verification_states",
json_extract_path_text(properties, '$.verificationRecords') as "verification_records",
json_extract_path_text(properties, '$.userEngagementTracking') as "user_engagement_tracking",
subscriptionId,
resourceGroupName,
emailServiceName,
domainName
FROM azure.communication.domains
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND emailServiceName = 'replace-me';
```

</TabItem>
</Tabs>
