--- 
title: vw_consumer_invitations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_consumer_invitations
  - data_share
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

Creates, updates, deletes, gets or lists a <code>vw_consumer_invitations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_consumer_invitations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_share.vw_consumer_invitations" /></td></tr>
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
systemData as system_data,
type as type,
JSON_EXTRACT(properties, '$.dataSetCount') as "data_set_count",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.expirationDate') as "expiration_date",
JSON_EXTRACT(properties, '$.invitationId') as "invitation_id",
JSON_EXTRACT(properties, '$.invitationStatus') as "invitation_status",
JSON_EXTRACT(properties, '$.location') as "location",
JSON_EXTRACT(properties, '$.providerEmail') as "provider_email",
JSON_EXTRACT(properties, '$.providerName') as "provider_name",
JSON_EXTRACT(properties, '$.providerTenantName') as "provider_tenant_name",
JSON_EXTRACT(properties, '$.respondedAt') as "responded_at",
JSON_EXTRACT(properties, '$.sentAt') as "sent_at",
JSON_EXTRACT(properties, '$.shareName') as "share_name",
JSON_EXTRACT(properties, '$.termsOfUse') as "terms_of_use",
JSON_EXTRACT(properties, '$.userEmail') as "user_email",
JSON_EXTRACT(properties, '$.userName') as "user_name",
location,
invitationId
FROM azure.data_share.consumer_invitations
WHERE location = 'replace-me' AND invitationId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
systemData as system_data,
type as type,
json_extract_path_text(properties, '$.dataSetCount') as "data_set_count",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.expirationDate') as "expiration_date",
json_extract_path_text(properties, '$.invitationId') as "invitation_id",
json_extract_path_text(properties, '$.invitationStatus') as "invitation_status",
json_extract_path_text(properties, '$.location') as "location",
json_extract_path_text(properties, '$.providerEmail') as "provider_email",
json_extract_path_text(properties, '$.providerName') as "provider_name",
json_extract_path_text(properties, '$.providerTenantName') as "provider_tenant_name",
json_extract_path_text(properties, '$.respondedAt') as "responded_at",
json_extract_path_text(properties, '$.sentAt') as "sent_at",
json_extract_path_text(properties, '$.shareName') as "share_name",
json_extract_path_text(properties, '$.termsOfUse') as "terms_of_use",
json_extract_path_text(properties, '$.userEmail') as "user_email",
json_extract_path_text(properties, '$.userName') as "user_name",
location,
invitationId
FROM azure.data_share.consumer_invitations
WHERE location = 'replace-me' AND invitationId = 'replace-me';
```

</TabItem>
</Tabs>
