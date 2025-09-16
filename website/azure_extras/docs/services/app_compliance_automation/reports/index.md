--- 
title: reports
hide_title: false
hide_table_of_contents: false
keywords:
  - reports
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

Creates, updates, deletes, gets or lists a <code>reports</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>reports</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.app_compliance_automation.reports" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
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
    <td>Report property.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

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
    <td>Report property.</td>
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
    <td><a href="#parameter-reportName"><code>reportName</code></a></td>
    <td></td>
    <td>Get the AppComplianceAutomation report and its properties.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td><a href="#parameter-$skipToken"><code>$skipToken</code></a>, <a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-$select"><code>$select</code></a>, <a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$orderby"><code>$orderby</code></a>, <a href="#parameter-offerGuid"><code>offerGuid</code></a>, <a href="#parameter-reportCreatorTenantId"><code>reportCreatorTenantId</code></a></td>
    <td>Get the AppComplianceAutomation report list for the tenant.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-reportName"><code>reportName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Create a new AppComplianceAutomation report or update an exiting AppComplianceAutomation report.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-reportName"><code>reportName</code></a></td>
    <td></td>
    <td>Update an exiting AppComplianceAutomation report.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-reportName"><code>reportName</code></a></td>
    <td></td>
    <td>Delete an AppComplianceAutomation report.</td>
</tr>
<tr>
    <td><a href="#nested_resource_check_name_availability"><CopyableCode code="nested_resource_check_name_availability" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-reportName"><code>reportName</code></a></td>
    <td></td>
    <td>Checks the report's nested resource name availability, e.g: Webhooks, Evidences, Snapshots.</td>
</tr>
<tr>
    <td><a href="#fix"><CopyableCode code="fix" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-reportName"><code>reportName</code></a></td>
    <td></td>
    <td>Fix the AppComplianceAutomation report error. e.g: App Compliance Automation Tool service unregistered, automation removed.</td>
</tr>
<tr>
    <td><a href="#sync_cert_record"><CopyableCode code="sync_cert_record" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-reportName"><code>reportName</code></a>, <a href="#parameter-certRecord"><code>certRecord</code></a></td>
    <td></td>
    <td>Synchronize attestation record from app compliance.</td>
</tr>
<tr>
    <td><a href="#verify"><CopyableCode code="verify" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-reportName"><code>reportName</code></a></td>
    <td></td>
    <td>Verify the AppComplianceAutomation report health status.</td>
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
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Get the AppComplianceAutomation report and its properties.

```sql
SELECT
properties
FROM azure_extras.app_compliance_automation.reports
WHERE reportName = '{{ reportName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Get the AppComplianceAutomation report list for the tenant.

```sql
SELECT
properties
FROM azure_extras.app_compliance_automation.reports
WHERE $skipToken = '{{ $skipToken }}'
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

Create a new AppComplianceAutomation report or update an exiting AppComplianceAutomation report.

```sql
INSERT INTO azure_extras.app_compliance_automation.reports (
data__properties,
reportName
)
SELECT 
'{{ properties }}' /* required */,
'{{ reportName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: reports
  props:
    - name: reportName
      value: string
      description: Required parameter for the reports resource.
    - name: properties
      value: object
      description: |
        Report property.
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

Update an exiting AppComplianceAutomation report.

```sql
UPDATE azure_extras.app_compliance_automation.reports
SET 
data__properties = '{{ properties }}'
WHERE 
reportName = '{{ reportName }}' --required
RETURNING
properties;
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

Delete an AppComplianceAutomation report.

```sql
DELETE FROM azure_extras.app_compliance_automation.reports
WHERE reportName = '{{ reportName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="nested_resource_check_name_availability"
    values={[
        { label: 'nested_resource_check_name_availability', value: 'nested_resource_check_name_availability' },
        { label: 'fix', value: 'fix' },
        { label: 'sync_cert_record', value: 'sync_cert_record' },
        { label: 'verify', value: 'verify' }
    ]}
>
<TabItem value="nested_resource_check_name_availability">

Checks the report's nested resource name availability, e.g: Webhooks, Evidences, Snapshots.

```sql
EXEC azure_extras.app_compliance_automation.reports.nested_resource_check_name_availability 
@reportName='{{ reportName }}' --required 
@@json=
'{
"name": "{{ name }}", 
"type": "{{ type }}"
}'
;
```
</TabItem>
<TabItem value="fix">

Fix the AppComplianceAutomation report error. e.g: App Compliance Automation Tool service unregistered, automation removed.

```sql
EXEC azure_extras.app_compliance_automation.reports.fix 
@reportName='{{ reportName }}' --required
;
```
</TabItem>
<TabItem value="sync_cert_record">

Synchronize attestation record from app compliance.

```sql
EXEC azure_extras.app_compliance_automation.reports.sync_cert_record 
@reportName='{{ reportName }}' --required 
@@json=
'{
"certRecord": "{{ certRecord }}"
}'
;
```
</TabItem>
<TabItem value="verify">

Verify the AppComplianceAutomation report health status.

```sql
EXEC azure_extras.app_compliance_automation.reports.verify 
@reportName='{{ reportName }}' --required
;
```
</TabItem>
</Tabs>
