--- 
title: vw_record_sets
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_record_sets
  - private_dns
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.private_dns.vw_record_sets" /></td></tr>
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
JSON_EXTRACT(properties, '$.ttl') as "ttl",
JSON_EXTRACT(properties, '$.fqdn') as "fqdn",
JSON_EXTRACT(properties, '$.isAutoRegistered') as "is_auto_registered",
JSON_EXTRACT(properties, '$.aRecords') as "a_records",
JSON_EXTRACT(properties, '$.aaaaRecords') as "aaaa_records",
JSON_EXTRACT(properties, '$.cnameRecord') as "cname_record",
JSON_EXTRACT(properties, '$.mxRecords') as "mx_records",
JSON_EXTRACT(properties, '$.ptrRecords') as "ptr_records",
JSON_EXTRACT(properties, '$.soaRecord') as "soa_record",
JSON_EXTRACT(properties, '$.srvRecords') as "srv_records",
JSON_EXTRACT(properties, '$.txtRecords') as "txt_records",
subscriptionId,
resourceGroupName,
privateZoneName,
recordType,
relativeRecordSetName
FROM azure.private_dns.record_sets
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND privateZoneName = 'replace-me';
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
json_extract_path_text(properties, '$.ttl') as "ttl",
json_extract_path_text(properties, '$.fqdn') as "fqdn",
json_extract_path_text(properties, '$.isAutoRegistered') as "is_auto_registered",
json_extract_path_text(properties, '$.aRecords') as "a_records",
json_extract_path_text(properties, '$.aaaaRecords') as "aaaa_records",
json_extract_path_text(properties, '$.cnameRecord') as "cname_record",
json_extract_path_text(properties, '$.mxRecords') as "mx_records",
json_extract_path_text(properties, '$.ptrRecords') as "ptr_records",
json_extract_path_text(properties, '$.soaRecord') as "soa_record",
json_extract_path_text(properties, '$.srvRecords') as "srv_records",
json_extract_path_text(properties, '$.txtRecords') as "txt_records",
subscriptionId,
resourceGroupName,
privateZoneName,
recordType,
relativeRecordSetName
FROM azure.private_dns.record_sets
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND privateZoneName = 'replace-me';
```

</TabItem>
</Tabs>
