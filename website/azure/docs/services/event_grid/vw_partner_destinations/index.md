--- 
title: vw_partner_destinations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_partner_destinations
  - event_grid
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

Creates, updates, deletes, gets or lists a <code>vw_partner_destinations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_partner_destinations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.event_grid.vw_partner_destinations" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.partnerRegistrationImmutableId') as "partner_registration_immutable_id",
JSON_EXTRACT(properties, '$.endpointServiceContext') as "endpoint_service_context",
JSON_EXTRACT(properties, '$.expirationTimeIfNotActivatedUtc') as "expiration_time_if_not_activated_utc",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.activationState') as "activation_state",
JSON_EXTRACT(properties, '$.endpointBaseUrl') as "endpoint_base_url",
JSON_EXTRACT(properties, '$.messageForActivation') as "message_for_activation",
subscriptionId,
resourceGroupName,
partnerDestinationName
FROM azure.event_grid.partner_destinations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
systemData as system_data,
json_extract_path_text(properties, '$.partnerRegistrationImmutableId') as "partner_registration_immutable_id",
json_extract_path_text(properties, '$.endpointServiceContext') as "endpoint_service_context",
json_extract_path_text(properties, '$.expirationTimeIfNotActivatedUtc') as "expiration_time_if_not_activated_utc",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.activationState') as "activation_state",
json_extract_path_text(properties, '$.endpointBaseUrl') as "endpoint_base_url",
json_extract_path_text(properties, '$.messageForActivation') as "message_for_activation",
subscriptionId,
resourceGroupName,
partnerDestinationName
FROM azure.event_grid.partner_destinations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
