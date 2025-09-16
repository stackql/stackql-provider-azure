--- 
title: data_collection_rule_associations
hide_title: false
hide_table_of_contents: false
keywords:
  - data_collection_rule_associations
  - monitor
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

Creates, updates, deletes, gets or lists a <code>data_collection_rule_associations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>data_collection_rule_associations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.monitor.data_collection_rule_associations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_by_rule"
    values={[
        { label: 'list_by_rule', value: 'list_by_rule' },
        { label: 'list_by_data_collection_endpoint', value: 'list_by_data_collection_endpoint' },
        { label: 'get', value: 'get' },
        { label: 'list_by_resource', value: 'list_by_resource' }
    ]}
>
<TabItem value="list_by_rule">

Request completed successfully

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
    <td>Fully qualified ID of the resource. (example: /subscriptions/703362b3-f278-4e4b-9179-c76eaf41ffc2/resourceGroups/myResourceGroup/providers/Microsoft.Insights/dataCollectionRules/myCollectionRule)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource. (example: myCollectionRule)</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Resource entity tag (ETag).</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Definition of association of a data collection rule with a monitored Azure resource.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. (example: Microsoft.Insights/dataCollectionRules)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_data_collection_endpoint">

Request completed successfully

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
    <td>Fully qualified ID of the resource. (example: /subscriptions/703362b3-f278-4e4b-9179-c76eaf41ffc2/resourceGroups/myResourceGroup/providers/Microsoft.Insights/dataCollectionRules/myCollectionRule)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource. (example: myCollectionRule)</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Resource entity tag (ETag).</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Definition of association of a data collection rule with a monitored Azure resource.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. (example: Microsoft.Insights/dataCollectionRules)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get">

Request completed successfully

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
    <td>Fully qualified ID of the resource. (example: /subscriptions/703362b3-f278-4e4b-9179-c76eaf41ffc2/resourceGroups/myResourceGroup/providers/Microsoft.Insights/dataCollectionRules/myCollectionRule)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource. (example: myCollectionRule)</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Resource entity tag (ETag).</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Definition of association of a data collection rule with a monitored Azure resource.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. (example: Microsoft.Insights/dataCollectionRules)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource">

Request completed successfully

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
    <td>Fully qualified ID of the resource. (example: /subscriptions/703362b3-f278-4e4b-9179-c76eaf41ffc2/resourceGroups/myResourceGroup/providers/Microsoft.Insights/dataCollectionRules/myCollectionRule)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource. (example: myCollectionRule)</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Resource entity tag (ETag).</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Definition of association of a data collection rule with a monitored Azure resource.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. (example: Microsoft.Insights/dataCollectionRules)</td>
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
    <td><a href="#list_by_rule"><CopyableCode code="list_by_rule" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataCollectionRuleName"><code>dataCollectionRuleName</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#list_by_data_collection_endpoint"><CopyableCode code="list_by_data_collection_endpoint" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataCollectionEndpointName"><code>dataCollectionEndpointName</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-associationName"><code>associationName</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#list_by_resource"><CopyableCode code="list_by_resource" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-associationName"><code>associationName</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-associationName"><code>associationName</code></a></td>
    <td></td>
    <td></td>
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
<tr id="parameter-associationName">
    <td><CopyableCode code="associationName" /></td>
    <td><code>string</code></td>
    <td>The name of the association. The name is case insensitive.</td>
</tr>
<tr id="parameter-dataCollectionEndpointName">
    <td><CopyableCode code="dataCollectionEndpointName" /></td>
    <td><code>string</code></td>
    <td>The name of the data collection endpoint. The name is case insensitive.</td>
</tr>
<tr id="parameter-dataCollectionRuleName">
    <td><CopyableCode code="dataCollectionRuleName" /></td>
    <td><code>string</code></td>
    <td>The name of the data collection rule. The name is case insensitive.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-resourceUri">
    <td><CopyableCode code="resourceUri" /></td>
    <td><code>string</code></td>
    <td>The identifier of the resource.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_by_rule"
    values={[
        { label: 'list_by_rule', value: 'list_by_rule' },
        { label: 'list_by_data_collection_endpoint', value: 'list_by_data_collection_endpoint' },
        { label: 'get', value: 'get' },
        { label: 'list_by_resource', value: 'list_by_resource' }
    ]}
>
<TabItem value="list_by_rule">

Request completed successfully

```sql
SELECT
id,
name,
etag,
properties,
systemData,
type
FROM azure.monitor.data_collection_rule_associations
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND dataCollectionRuleName = '{{ dataCollectionRuleName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_data_collection_endpoint">

Request completed successfully

```sql
SELECT
id,
name,
etag,
properties,
systemData,
type
FROM azure.monitor.data_collection_rule_associations
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND dataCollectionEndpointName = '{{ dataCollectionEndpointName }}' -- required
;
```
</TabItem>
<TabItem value="get">

Request completed successfully

```sql
SELECT
id,
name,
etag,
properties,
systemData,
type
FROM azure.monitor.data_collection_rule_associations
WHERE resourceUri = '{{ resourceUri }}' -- required
AND associationName = '{{ associationName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource">

Request completed successfully

```sql
SELECT
id,
name,
etag,
properties,
systemData,
type
FROM azure.monitor.data_collection_rule_associations
WHERE resourceUri = '{{ resourceUri }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

No description available.

```sql
INSERT INTO azure.monitor.data_collection_rule_associations (
data__properties,
resourceUri,
associationName
)
SELECT 
'{{ properties }}',
'{{ resourceUri }}',
'{{ associationName }}'
RETURNING
id,
name,
etag,
properties,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: data_collection_rule_associations
  props:
    - name: resourceUri
      value: string
      description: Required parameter for the data_collection_rule_associations resource.
    - name: associationName
      value: string
      description: Required parameter for the data_collection_rule_associations resource.
    - name: properties
      value: object
      description: |
        Definition of association of a data collection rule with a monitored Azure resource.
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

No description available.

```sql
DELETE FROM azure.monitor.data_collection_rule_associations
WHERE resourceUri = '{{ resourceUri }}' --required
AND associationName = '{{ associationName }}' --required
;
```
</TabItem>
</Tabs>
