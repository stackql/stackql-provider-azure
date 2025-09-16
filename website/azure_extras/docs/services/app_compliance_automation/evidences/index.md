--- 
title: evidences
hide_title: false
hide_table_of_contents: false
keywords:
  - evidences
  - app_compliance_automation
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

Creates, updates, deletes, gets or lists an <code>evidences</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>evidences</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.app_compliance_automation.evidences" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_report', value: 'list_by_report' }
    ]}
>
<TabItem value="get">

Azure operation completed successfully.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Evidence property.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_report">

Azure operation completed successfully.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Evidence property.</td>
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
    <td><a href="#parameter-reportName"><code>reportName</code></a>, <a href="#parameter-evidenceName"><code>evidenceName</code></a></td>
    <td></td>
    <td>Get the evidence metadata</td>
</tr>
<tr>
    <td><a href="#list_by_report"><CopyableCode code="list_by_report" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-reportName"><code>reportName</code></a></td>
    <td><a href="#parameter-$skipToken"><code>$skipToken</code></a>, <a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-$select"><code>$select</code></a>, <a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$orderby"><code>$orderby</code></a>, <a href="#parameter-offerGuid"><code>offerGuid</code></a>, <a href="#parameter-reportCreatorTenantId"><code>reportCreatorTenantId</code></a></td>
    <td>Returns a paginated list of evidences for a specified report.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-reportName"><code>reportName</code></a>, <a href="#parameter-evidenceName"><code>evidenceName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td><a href="#parameter-offerGuid"><code>offerGuid</code></a>, <a href="#parameter-reportCreatorTenantId"><code>reportCreatorTenantId</code></a></td>
    <td>Create or Update an evidence a specified report</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-reportName"><code>reportName</code></a>, <a href="#parameter-evidenceName"><code>evidenceName</code></a></td>
    <td></td>
    <td>Delete an existent evidence from a specified report</td>
</tr>
<tr>
    <td><a href="#download"><CopyableCode code="download" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-reportName"><code>reportName</code></a>, <a href="#parameter-evidenceName"><code>evidenceName</code></a></td>
    <td></td>
    <td>Download evidence file.</td>
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
<tr id="parameter-evidenceName">
    <td><CopyableCode code="evidenceName" /></td>
    <td><code>string</code></td>
    <td>The evidence name.</td>
</tr>
<tr id="parameter-reportName">
    <td><CopyableCode code="reportName" /></td>
    <td><code>string</code></td>
    <td>Report Name.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter to apply on the operation.</td>
</tr>
<tr id="parameter-$orderby">
    <td><CopyableCode code="$orderby" /></td>
    <td><code>string</code></td>
    <td>OData order by query option.</td>
</tr>
<tr id="parameter-$select">
    <td><CopyableCode code="$select" /></td>
    <td><code>string</code></td>
    <td>OData Select statement. Limits the properties on each entry to just those requested, e.g. ?$select=reportName,id.</td>
</tr>
<tr id="parameter-$skipToken">
    <td><CopyableCode code="$skipToken" /></td>
    <td><code>string</code></td>
    <td>Skip over when retrieving results.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>Number of elements to return when retrieving results.</td>
</tr>
<tr id="parameter-offerGuid">
    <td><CopyableCode code="offerGuid" /></td>
    <td><code>string</code></td>
    <td>The offerGuid which mapping to the reports.</td>
</tr>
<tr id="parameter-reportCreatorTenantId">
    <td><CopyableCode code="reportCreatorTenantId" /></td>
    <td><code>string</code></td>
    <td>The tenant id of the report creator.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_report', value: 'list_by_report' }
    ]}
>
<TabItem value="get">

Get the evidence metadata

```sql
SELECT
properties
FROM azure_extras.app_compliance_automation.evidences
WHERE reportName = '{{ reportName }}' -- required
AND evidenceName = '{{ evidenceName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_report">

Returns a paginated list of evidences for a specified report.

```sql
SELECT
properties
FROM azure_extras.app_compliance_automation.evidences
WHERE reportName = '{{ reportName }}' -- required
AND $skipToken = '{{ $skipToken }}'
AND $top = '{{ $top }}'
AND $select = '{{ $select }}'
AND $filter = '{{ $filter }}'
AND $orderby = '{{ $orderby }}'
AND offerGuid = '{{ offerGuid }}'
AND reportCreatorTenantId = '{{ reportCreatorTenantId }}'
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

Create or Update an evidence a specified report

```sql
INSERT INTO azure_extras.app_compliance_automation.evidences (
data__properties,
reportName,
evidenceName,
offerGuid,
reportCreatorTenantId
)
SELECT 
'{{ properties }}' /* required */,
'{{ reportName }}',
'{{ evidenceName }}',
'{{ offerGuid }}',
'{{ reportCreatorTenantId }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: evidences
  props:
    - name: reportName
      value: string
      description: Required parameter for the evidences resource.
    - name: evidenceName
      value: string
      description: Required parameter for the evidences resource.
    - name: properties
      value: object
      description: |
        Evidence property.
    - name: offerGuid
      value: string
      description: The offerGuid which mapping to the reports.
    - name: reportCreatorTenantId
      value: string
      description: The tenant id of the report creator.
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

Delete an existent evidence from a specified report

```sql
DELETE FROM azure_extras.app_compliance_automation.evidences
WHERE reportName = '{{ reportName }}' --required
AND evidenceName = '{{ evidenceName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="download"
    values={[
        { label: 'download', value: 'download' }
    ]}
>
<TabItem value="download">

Download evidence file.

```sql
EXEC azure_extras.app_compliance_automation.evidences.download 
@reportName='{{ reportName }}' --required, 
@evidenceName='{{ evidenceName }}' --required 
@@json=
'{
"reportCreatorTenantId": "{{ reportCreatorTenantId }}", 
"offerGuid": "{{ offerGuid }}"
}'
;
```
</TabItem>
</Tabs>
