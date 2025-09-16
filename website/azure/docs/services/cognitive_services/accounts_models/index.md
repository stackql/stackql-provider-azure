--- 
title: accounts_models
hide_title: false
hide_table_of_contents: false
keywords:
  - accounts_models
  - cognitive_services
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

Creates, updates, deletes, gets or lists an <code>accounts_models</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>accounts_models</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cognitive_services.accounts_models" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

The resource provider should return 200 (OK) to indicate that the operation completed successfully.<br />For a detailed explanation of each field in the response body, please refer to the request body description in the PUT resource section. The only GET specific properties are "name," "type" and "id."<br />Field	Description<br />sku	Required, object<br />	The exact set of keys that define this sku. This matches the fields on the respective resource.<br />sku.name	Required, string<br />	The name of the SKU. This is typically a letter + number code, such as A0 or P3<br />sku.tier	Required, string<br />	The tier of this particular SKU. Typically one of:<br />	· Free<br />	· Basic<br />	· Standard<br />	· Premium<br />

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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Deployment model name.</td>
</tr>
<tr>
    <td><CopyableCode code="baseModel" /></td>
    <td><code>object</code></td>
    <td>Properties of Cognitive Services account deployment model.</td>
</tr>
<tr>
    <td><CopyableCode code="callRateLimit" /></td>
    <td><code>object</code></td>
    <td>The call rate limit Cognitive Services account.</td>
</tr>
<tr>
    <td><CopyableCode code="capabilities" /></td>
    <td><code>object</code></td>
    <td>The capabilities.</td>
</tr>
<tr>
    <td><CopyableCode code="deprecation" /></td>
    <td><code>object</code></td>
    <td>Cognitive Services account ModelDeprecationInfo.</td>
</tr>
<tr>
    <td><CopyableCode code="finetuneCapabilities" /></td>
    <td><code>object</code></td>
    <td>The capabilities for finetune models.</td>
</tr>
<tr>
    <td><CopyableCode code="format" /></td>
    <td><code>string</code></td>
    <td>Deployment model format.</td>
</tr>
<tr>
    <td><CopyableCode code="isDefaultVersion" /></td>
    <td><code>boolean</code></td>
    <td>If the model is default version.</td>
</tr>
<tr>
    <td><CopyableCode code="lifecycleStatus" /></td>
    <td><code>string</code></td>
    <td>Model lifecycle status.</td>
</tr>
<tr>
    <td><CopyableCode code="maxCapacity" /></td>
    <td><code>integer (int32)</code></td>
    <td>The max capacity.</td>
</tr>
<tr>
    <td><CopyableCode code="skus" /></td>
    <td><code>array</code></td>
    <td>The list of Model Sku.</td>
</tr>
<tr>
    <td><CopyableCode code="source" /></td>
    <td><code>string</code></td>
    <td>Optional. Deployment model source ARM resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="version" /></td>
    <td><code>string</code></td>
    <td>Optional. Deployment model version. If version is not specified, a default version will be assigned. The default version is different for different models and might change when there is new version available for a model. Default version for a model could be found from list models API.</td>
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
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>List available Models for the requested Cognitive Services account</td>
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
<tr id="parameter-accountName">
    <td><CopyableCode code="accountName" /></td>
    <td><code>string</code></td>
    <td>The name of Cognitive Services account.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

List available Models for the requested Cognitive Services account

```sql
SELECT
name,
baseModel,
callRateLimit,
capabilities,
deprecation,
finetuneCapabilities,
format,
isDefaultVersion,
lifecycleStatus,
maxCapacity,
skus,
source,
systemData,
version
FROM azure.cognitive_services.accounts_models
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>
