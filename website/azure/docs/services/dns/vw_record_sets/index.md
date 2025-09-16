--- 
title: vw_record_sets
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_record_sets
  - dns
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

Creates, updates, deletes, gets or lists a <code>vw_record_sets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_record_sets</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dns.vw_record_sets" /></td></tr>
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
type as type,
etag as etag,
JSON_EXTRACT(properties, '$.metadata') as "metadata",
JSON_EXTRACT(properties, '$.TTL') as "ttl",
JSON_EXTRACT(properties, '$.fqdn') as "fqdn",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.targetResource') as "target_resource",
JSON_EXTRACT(properties, '$.trafficManagementProfile') as "traffic_management_profile",
JSON_EXTRACT(properties, '$.ARecords') as "a_records",
JSON_EXTRACT(properties, '$.AAAARecords') as "aaaa_records",
JSON_EXTRACT(properties, '$.MXRecords') as "mx_records",
JSON_EXTRACT(properties, '$.NSRecords') as "ns_records",
JSON_EXTRACT(properties, '$.PTRRecords') as "ptr_records",
JSON_EXTRACT(properties, '$.SRVRecords') as "srv_records",
JSON_EXTRACT(properties, '$.TXTRecords') as "txt_records",
JSON_EXTRACT(properties, '$.CNAMERecord') as "cname_record",
JSON_EXTRACT(properties, '$.SOARecord') as "soa_record",
JSON_EXTRACT(properties, '$.caaRecords') as "caa_records",
JSON_EXTRACT(properties, '$.DSRecords') as "ds_records",
JSON_EXTRACT(properties, '$.TLSARecords') as "tlsa_records",
JSON_EXTRACT(properties, '$.NAPTRRecords') as "naptr_records",
subscriptionId,
resourceGroupName,
zoneName,
recordType,
relativeRecordSetName
FROM azure.dns.record_sets
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND zoneName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
etag as etag,
json_extract_path_text(properties, '$.metadata') as "metadata",
json_extract_path_text(properties, '$.TTL') as "ttl",
json_extract_path_text(properties, '$.fqdn') as "fqdn",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.targetResource') as "target_resource",
json_extract_path_text(properties, '$.trafficManagementProfile') as "traffic_management_profile",
json_extract_path_text(properties, '$.ARecords') as "a_records",
json_extract_path_text(properties, '$.AAAARecords') as "aaaa_records",
json_extract_path_text(properties, '$.MXRecords') as "mx_records",
json_extract_path_text(properties, '$.NSRecords') as "ns_records",
json_extract_path_text(properties, '$.PTRRecords') as "ptr_records",
json_extract_path_text(properties, '$.SRVRecords') as "srv_records",
json_extract_path_text(properties, '$.TXTRecords') as "txt_records",
json_extract_path_text(properties, '$.CNAMERecord') as "cname_record",
json_extract_path_text(properties, '$.SOARecord') as "soa_record",
json_extract_path_text(properties, '$.caaRecords') as "caa_records",
json_extract_path_text(properties, '$.DSRecords') as "ds_records",
json_extract_path_text(properties, '$.TLSARecords') as "tlsa_records",
json_extract_path_text(properties, '$.NAPTRRecords') as "naptr_records",
subscriptionId,
resourceGroupName,
zoneName,
recordType,
relativeRecordSetName
FROM azure.dns.record_sets
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND zoneName = 'replace-me';
```

</TabItem>
</Tabs>
