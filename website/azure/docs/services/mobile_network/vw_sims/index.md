--- 
title: vw_sims
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sims
  - mobile_network
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

Creates, updates, deletes, gets or lists a <code>vw_sims</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sims</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.mobile_network.vw_sims" /></td></tr>
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
JSON_EXTRACT(properties, '$.authenticationKey') as "authentication_key",
JSON_EXTRACT(properties, '$.operatorKeyCode') as "operator_key_code",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.simState') as "sim_state",
JSON_EXTRACT(properties, '$.siteProvisioningState') as "site_provisioning_state",
JSON_EXTRACT(properties, '$.internationalMobileSubscriberIdentity') as "international_mobile_subscriber_identity",
JSON_EXTRACT(properties, '$.integratedCircuitCardIdentifier') as "integrated_circuit_card_identifier",
JSON_EXTRACT(properties, '$.deviceType') as "device_type",
JSON_EXTRACT(properties, '$.simPolicy') as "sim_policy",
JSON_EXTRACT(properties, '$.staticIpConfiguration') as "static_ip_configuration",
JSON_EXTRACT(properties, '$.vendorName') as "vendor_name",
JSON_EXTRACT(properties, '$.vendorKeyFingerprint') as "vendor_key_fingerprint",
subscriptionId,
resourceGroupName,
simGroupName,
simName
FROM azure.mobile_network.sims
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND simGroupName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.authenticationKey') as "authentication_key",
json_extract_path_text(properties, '$.operatorKeyCode') as "operator_key_code",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.simState') as "sim_state",
json_extract_path_text(properties, '$.siteProvisioningState') as "site_provisioning_state",
json_extract_path_text(properties, '$.internationalMobileSubscriberIdentity') as "international_mobile_subscriber_identity",
json_extract_path_text(properties, '$.integratedCircuitCardIdentifier') as "integrated_circuit_card_identifier",
json_extract_path_text(properties, '$.deviceType') as "device_type",
json_extract_path_text(properties, '$.simPolicy') as "sim_policy",
json_extract_path_text(properties, '$.staticIpConfiguration') as "static_ip_configuration",
json_extract_path_text(properties, '$.vendorName') as "vendor_name",
json_extract_path_text(properties, '$.vendorKeyFingerprint') as "vendor_key_fingerprint",
subscriptionId,
resourceGroupName,
simGroupName,
simName
FROM azure.mobile_network.sims
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND simGroupName = 'replace-me';
```

</TabItem>
</Tabs>
