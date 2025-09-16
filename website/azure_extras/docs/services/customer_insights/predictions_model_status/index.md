--- 
title: predictions_model_status
hide_title: false
hide_table_of_contents: false
keywords:
  - predictions_model_status
  - customer_insights
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

Creates, updates, deletes, gets or lists a <code>predictions_model_status</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>predictions_model_status</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.customer_insights.predictions_model_status" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

OK. Successfully get the model status.

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
    <td><CopyableCode code="message" /></td>
    <td><code>string</code></td>
    <td>The model status message.</td>
</tr>
<tr>
    <td><CopyableCode code="modelVersion" /></td>
    <td><code>string</code></td>
    <td>Version of the model.</td>
</tr>
<tr>
    <td><CopyableCode code="predictionGuidId" /></td>
    <td><code>string</code></td>
    <td>The prediction GUID ID.</td>
</tr>
<tr>
    <td><CopyableCode code="predictionName" /></td>
    <td><code>string</code></td>
    <td>The prediction name.</td>
</tr>
<tr>
    <td><CopyableCode code="signalsUsed" /></td>
    <td><code>integer</code></td>
    <td>The signals used.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Prediction model life cycle.  When prediction is in PendingModelConfirmation status, it is allowed to update the status to PendingFeaturing or Active through API.</td>
</tr>
<tr>
    <td><CopyableCode code="tenantId" /></td>
    <td><code>string</code></td>
    <td>The hub name.</td>
</tr>
<tr>
    <td><CopyableCode code="testSetCount" /></td>
    <td><code>integer</code></td>
    <td>Count of the test set.</td>
</tr>
<tr>
    <td><CopyableCode code="trainingAccuracy" /></td>
    <td><code>integer (decimal)</code></td>
    <td>The training accuracy.</td>
</tr>
<tr>
    <td><CopyableCode code="trainingSetCount" /></td>
    <td><code>integer</code></td>
    <td>Count of the training set.</td>
</tr>
<tr>
    <td><CopyableCode code="validationSetCount" /></td>
    <td><code>integer</code></td>
    <td>Count of the validation set.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-hubName"><code>hubName</code></a>, <a href="#parameter-predictionName"><code>predictionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets model status of the prediction.</td>
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
<tr id="parameter-hubName">
    <td><CopyableCode code="hubName" /></td>
    <td><code>string</code></td>
    <td>The name of the hub.</td>
</tr>
<tr id="parameter-predictionName">
    <td><CopyableCode code="predictionName" /></td>
    <td><code>string</code></td>
    <td>The name of the Prediction.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Gets model status of the prediction.

```sql
SELECT
message,
modelVersion,
predictionGuidId,
predictionName,
signalsUsed,
status,
tenantId,
testSetCount,
trainingAccuracy,
trainingSetCount,
validationSetCount
FROM azure_extras.customer_insights.predictions_model_status
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND hubName = '{{ hubName }}' -- required
AND predictionName = '{{ predictionName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>
