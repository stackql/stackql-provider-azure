--- 
title: vw_default_security_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_default_security_rules
  - network
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

Creates, updates, deletes, gets or lists a <code>vw_default_security_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_default_security_rules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_default_security_rules" /></td></tr>
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
etag as etag,
type as type,
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.protocol') as "protocol",
JSON_EXTRACT(properties, '$.sourcePortRange') as "source_port_range",
JSON_EXTRACT(properties, '$.destinationPortRange') as "destination_port_range",
JSON_EXTRACT(properties, '$.sourceAddressPrefix') as "source_address_prefix",
JSON_EXTRACT(properties, '$.sourceAddressPrefixes') as "source_address_prefixes",
JSON_EXTRACT(properties, '$.sourceApplicationSecurityGroups') as "source_application_security_groups",
JSON_EXTRACT(properties, '$.destinationAddressPrefix') as "destination_address_prefix",
JSON_EXTRACT(properties, '$.destinationAddressPrefixes') as "destination_address_prefixes",
JSON_EXTRACT(properties, '$.destinationApplicationSecurityGroups') as "destination_application_security_groups",
JSON_EXTRACT(properties, '$.sourcePortRanges') as "source_port_ranges",
JSON_EXTRACT(properties, '$.destinationPortRanges') as "destination_port_ranges",
JSON_EXTRACT(properties, '$.access') as "access",
JSON_EXTRACT(properties, '$.priority') as "priority",
JSON_EXTRACT(properties, '$.direction') as "direction",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
networkSecurityGroupName,
defaultSecurityRuleName
FROM azure.network.default_security_rules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND networkSecurityGroupName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
type as type,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.protocol') as "protocol",
json_extract_path_text(properties, '$.sourcePortRange') as "source_port_range",
json_extract_path_text(properties, '$.destinationPortRange') as "destination_port_range",
json_extract_path_text(properties, '$.sourceAddressPrefix') as "source_address_prefix",
json_extract_path_text(properties, '$.sourceAddressPrefixes') as "source_address_prefixes",
json_extract_path_text(properties, '$.sourceApplicationSecurityGroups') as "source_application_security_groups",
json_extract_path_text(properties, '$.destinationAddressPrefix') as "destination_address_prefix",
json_extract_path_text(properties, '$.destinationAddressPrefixes') as "destination_address_prefixes",
json_extract_path_text(properties, '$.destinationApplicationSecurityGroups') as "destination_application_security_groups",
json_extract_path_text(properties, '$.sourcePortRanges') as "source_port_ranges",
json_extract_path_text(properties, '$.destinationPortRanges') as "destination_port_ranges",
json_extract_path_text(properties, '$.access') as "access",
json_extract_path_text(properties, '$.priority') as "priority",
json_extract_path_text(properties, '$.direction') as "direction",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
networkSecurityGroupName,
defaultSecurityRuleName
FROM azure.network.default_security_rules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND networkSecurityGroupName = 'replace-me';
```

</TabItem>
</Tabs>
