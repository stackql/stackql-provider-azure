--- 
title: record_sets
hide_title: false
hide_table_of_contents: false
keywords:
  - record_sets
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

Creates, updates, deletes, gets or lists a <code>record_sets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>record_sets</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dns.record_sets" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_type', value: 'list_by_type' },
        { label: 'list_by_dns_zone', value: 'list_by_dns_zone' }
    ]}
>
<TabItem value="get">

Success.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The ID of the record set.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the record set.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>The etag of the record set.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the record set.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the record set.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_type">

Success.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The ID of the record set.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the record set.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>The etag of the record set.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the record set.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the record set.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_dns_zone">

Success.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The ID of the record set.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the record set.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>The etag of the record set.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the record set.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the record set.</td>
</tr>
</tbody>
</table>
</TabItem>
</Tabs>

## Methods

The following methods are available for this resource:

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Accessible by</th>
    <th>Required Params</th>
    <th>Optional Params</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-zoneName"><code>zoneName</code></a>, <a href="#parameter-relativeRecordSetName"><code>relativeRecordSetName</code></a>, <a href="#parameter-recordType"><code>recordType</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a record set.</td>
</tr>
<tr>
    <td><a href="#list_by_type"><CopyableCode code="list_by_type" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-zoneName"><code>zoneName</code></a>, <a href="#parameter-recordType"><code>recordType</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-$recordsetnamesuffix"><code>$recordsetnamesuffix</code></a></td>
    <td>Lists the record sets of a specified type in a DNS zone.</td>
</tr>
<tr>
    <td><a href="#list_by_dns_zone"><CopyableCode code="list_by_dns_zone" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-zoneName"><code>zoneName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-$recordsetnamesuffix"><code>$recordsetnamesuffix</code></a></td>
    <td>Lists all record sets in a DNS zone.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-zoneName"><code>zoneName</code></a>, <a href="#parameter-relativeRecordSetName"><code>relativeRecordSetName</code></a>, <a href="#parameter-recordType"><code>recordType</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a>, <a href="#parameter-If-None-Match"><code>If-None-Match</code></a></td>
    <td>Creates or updates a record set within a DNS zone. Record sets of type SOA can be updated but not created (they are created when the DNS zone is created).</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-zoneName"><code>zoneName</code></a>, <a href="#parameter-relativeRecordSetName"><code>relativeRecordSetName</code></a>, <a href="#parameter-recordType"><code>recordType</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td>Updates a record set within a DNS zone.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-zoneName"><code>zoneName</code></a>, <a href="#parameter-relativeRecordSetName"><code>relativeRecordSetName</code></a>, <a href="#parameter-recordType"><code>recordType</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td>Deletes a record set from a DNS zone. This operation cannot be undone. Record sets of type SOA cannot be deleted (they are deleted when the DNS zone is deleted).</td>
</tr>
</tbody>
</table>

## Parameters

Parameters can be passed in the `WHERE` clause of a query. Check the [Methods](#methods) section to see which parameters are required or optional for each operation.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr id="parameter-recordType">
    <td><CopyableCode code="recordType" /></td>
    <td><code>string</code></td>
    <td>The type of DNS record in this record set.</td>
</tr>
<tr id="parameter-relativeRecordSetName">
    <td><CopyableCode code="relativeRecordSetName" /></td>
    <td><code>string</code></td>
    <td>The name of the record set, relative to the name of the zone.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-zoneName">
    <td><CopyableCode code="zoneName" /></td>
    <td><code>string</code></td>
    <td>The name of the DNS zone (without a terminating dot).</td>
</tr>
<tr id="parameter-$recordsetnamesuffix">
    <td><CopyableCode code="$recordsetnamesuffix" /></td>
    <td><code>string</code></td>
    <td>The suffix label of the record set name that has to be used to filter the record set enumerations. If this parameter is specified, Enumeration will return only records that end with .&lt;recordSetNameSuffix&gt;</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>The maximum number of record sets to return. If not specified, returns up to 100 record sets.</td>
</tr>
<tr id="parameter-If-Match">
    <td><CopyableCode code="If-Match" /></td>
    <td><code>string</code></td>
    <td>The etag of the record set. Omit this value to always delete the current record set. Specify the last-seen etag value to prevent accidentally deleting any concurrent changes.</td>
</tr>
<tr id="parameter-If-None-Match">
    <td><CopyableCode code="If-None-Match" /></td>
    <td><code>string</code></td>
    <td>Set to '*' to allow a new record set to be created, but to prevent updating an existing record set. Other values will be ignored.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_type', value: 'list_by_type' },
        { label: 'list_by_dns_zone', value: 'list_by_dns_zone' }
    ]}
>
<TabItem value="get">

Gets a record set.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.dns.record_sets
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND zoneName = '{{ zoneName }}' -- required
AND relativeRecordSetName = '{{ relativeRecordSetName }}' -- required
AND recordType = '{{ recordType }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_type">

Lists the record sets of a specified type in a DNS zone.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.dns.record_sets
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND zoneName = '{{ zoneName }}' -- required
AND recordType = '{{ recordType }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $top = '{{ $top }}'
AND $recordsetnamesuffix = '{{ $recordsetnamesuffix }}'
;
```
</TabItem>
<TabItem value="list_by_dns_zone">

Lists all record sets in a DNS zone.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.dns.record_sets
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND zoneName = '{{ zoneName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $top = '{{ $top }}'
AND $recordsetnamesuffix = '{{ $recordsetnamesuffix }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_or_update"
    values={[
        { label: 'create_or_update', value: 'create_or_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_or_update">

Creates or updates a record set within a DNS zone. Record sets of type SOA can be updated but not created (they are created when the DNS zone is created).

```sql
INSERT INTO azure.dns.record_sets (
data__etag,
data__properties,
resourceGroupName,
zoneName,
relativeRecordSetName,
recordType,
subscriptionId,
If-Match,
If-None-Match
)
SELECT 
'{{ etag }}',
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ zoneName }}',
'{{ relativeRecordSetName }}',
'{{ recordType }}',
'{{ subscriptionId }}',
'{{ If-Match }}',
'{{ If-None-Match }}'
RETURNING
id,
name,
etag,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: record_sets
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the record_sets resource.
    - name: zoneName
      value: string
      description: Required parameter for the record_sets resource.
    - name: relativeRecordSetName
      value: string
      description: Required parameter for the record_sets resource.
    - name: recordType
      value: string
      description: Required parameter for the record_sets resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the record_sets resource.
    - name: etag
      value: string
      description: |
        The etag of the record set.
    - name: properties
      value: object
      description: |
        The properties of the record set.
    - name: If-Match
      value: string
      description: The etag of the record set. Omit this value to always overwrite the current record set. Specify the last-seen etag value to prevent accidentally overwriting any concurrent changes.
    - name: If-None-Match
      value: string
      description: Set to '*' to allow a new record set to be created, but to prevent updating an existing record set. Other values will be ignored.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

Updates a record set within a DNS zone.

```sql
UPDATE azure.dns.record_sets
SET 
data__etag = '{{ etag }}',
data__properties = '{{ properties }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND zoneName = '{{ zoneName }}' --required
AND relativeRecordSetName = '{{ relativeRecordSetName }}' --required
AND recordType = '{{ recordType }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND If-Match = '{{ If-Match}}'
RETURNING
id,
name,
etag,
properties,
type;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete"
    values={[
        { label: 'delete', value: 'delete' }
    ]}
>
<TabItem value="delete">

Deletes a record set from a DNS zone. This operation cannot be undone. Record sets of type SOA cannot be deleted (they are deleted when the DNS zone is deleted).

```sql
DELETE FROM azure.dns.record_sets
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND zoneName = '{{ zoneName }}' --required
AND relativeRecordSetName = '{{ relativeRecordSetName }}' --required
AND recordType = '{{ recordType }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND If-Match = '{{ If-Match }}'
;
```
</TabItem>
</Tabs>
