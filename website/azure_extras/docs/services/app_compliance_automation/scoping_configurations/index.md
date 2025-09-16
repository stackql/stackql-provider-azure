--- 
title: scoping_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - scoping_configurations
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

Creates, updates, deletes, gets or lists a <code>scoping_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>scoping_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.app_compliance_automation.scoping_configurations" /></td></tr>
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
    <td>ScopingConfiguration property.</td>
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
    <td>ScopingConfiguration property.</td>
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
    <td><a href="#parameter-reportName"><code>reportName</code></a>, <a href="#parameter-scopingConfigurationName"><code>scopingConfigurationName</code></a></td>
    <td></td>
    <td>Get the AppComplianceAutomation scoping configuration of the specific report.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-reportName"><code>reportName</code></a></td>
    <td></td>
    <td>Returns a list format of the singleton scopingConfiguration for a specified report.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-reportName"><code>reportName</code></a>, <a href="#parameter-scopingConfigurationName"><code>scopingConfigurationName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Get the AppComplianceAutomation scoping configuration of the specific report.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-reportName"><code>reportName</code></a>, <a href="#parameter-scopingConfigurationName"><code>scopingConfigurationName</code></a></td>
    <td></td>
    <td>Clean the AppComplianceAutomation scoping configuration of the specific report.</td>
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
<tr id="parameter-scopingConfigurationName">
    <td><CopyableCode code="scopingConfigurationName" /></td>
    <td><code>string</code></td>
    <td>The scoping configuration of the specific report.</td>
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

Get the AppComplianceAutomation scoping configuration of the specific report.

```sql
SELECT
properties
FROM azure_extras.app_compliance_automation.scoping_configurations
WHERE reportName = '{{ reportName }}' -- required
AND scopingConfigurationName = '{{ scopingConfigurationName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Returns a list format of the singleton scopingConfiguration for a specified report.

```sql
SELECT
properties
FROM azure_extras.app_compliance_automation.scoping_configurations
WHERE reportName = '{{ reportName }}' -- required
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

Get the AppComplianceAutomation scoping configuration of the specific report.

```sql
INSERT INTO azure_extras.app_compliance_automation.scoping_configurations (
data__properties,
reportName,
scopingConfigurationName
)
SELECT 
'{{ properties }}' /* required */,
'{{ reportName }}',
'{{ scopingConfigurationName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: scoping_configurations
  props:
    - name: reportName
      value: string
      description: Required parameter for the scoping_configurations resource.
    - name: scopingConfigurationName
      value: string
      description: Required parameter for the scoping_configurations resource.
    - name: properties
      value: object
      description: |
        ScopingConfiguration property.
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

Clean the AppComplianceAutomation scoping configuration of the specific report.

```sql
DELETE FROM azure_extras.app_compliance_automation.scoping_configurations
WHERE reportName = '{{ reportName }}' --required
AND scopingConfigurationName = '{{ scopingConfigurationName }}' --required
;
```
</TabItem>
</Tabs>
