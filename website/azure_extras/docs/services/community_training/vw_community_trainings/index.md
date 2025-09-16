--- 
title: vw_community_trainings
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_community_trainings
  - community_training
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_community_trainings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_community_trainings</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.community_training.vw_community_trainings" /></td></tr>
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
sku as sku,
tags as tags,
JSON_EXTRACT(properties, '$.portalName') as "portal_name",
JSON_EXTRACT(properties, '$.portalAdminEmailAddress') as "portal_admin_email_address",
JSON_EXTRACT(properties, '$.portalOwnerOrganizationName') as "portal_owner_organization_name",
JSON_EXTRACT(properties, '$.portalOwnerEmailAddress') as "portal_owner_email_address",
JSON_EXTRACT(properties, '$.identityConfiguration') as "identity_configuration",
JSON_EXTRACT(properties, '$.zoneRedundancyEnabled') as "zone_redundancy_enabled",
JSON_EXTRACT(properties, '$.disasterRecoveryEnabled') as "disaster_recovery_enabled",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
communityTrainingName
FROM azure_extras.community_training.community_trainings
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
sku as sku,
tags as tags,
json_extract_path_text(properties, '$.portalName') as "portal_name",
json_extract_path_text(properties, '$.portalAdminEmailAddress') as "portal_admin_email_address",
json_extract_path_text(properties, '$.portalOwnerOrganizationName') as "portal_owner_organization_name",
json_extract_path_text(properties, '$.portalOwnerEmailAddress') as "portal_owner_email_address",
json_extract_path_text(properties, '$.identityConfiguration') as "identity_configuration",
json_extract_path_text(properties, '$.zoneRedundancyEnabled') as "zone_redundancy_enabled",
json_extract_path_text(properties, '$.disasterRecoveryEnabled') as "disaster_recovery_enabled",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
communityTrainingName
FROM azure_extras.community_training.community_trainings
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
