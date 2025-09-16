--- 
title: recommendations
hide_title: false
hide_table_of_contents: false
keywords:
  - recommendations
  - advisor
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

Creates, updates, deletes, gets or lists a <code>recommendations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>recommendations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.advisor.recommendations" /></td></tr>
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

OK. Successfully got recommendation detail.

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the recommendation.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

OK. Successfully obtained cached recommendations.

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the recommendation.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
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
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-recommendationId"><code>recommendationId</code></a></td>
    <td></td>
    <td>Obtains details of a cached recommendation.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-$skipToken"><code>$skipToken</code></a></td>
    <td>Obtains cached recommendations for a subscription. The recommendations are generated or computed by invoking generateRecommendations.</td>
</tr>
<tr>
    <td><a href="#generate"><CopyableCode code="generate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Initiates the recommendation generation or computation process for a subscription. This operation is asynchronous. The generated recommendations are stored in a cache in the Advisor service.</td>
</tr>
<tr>
    <td><a href="#exec_get_generate_status"><CopyableCode code="exec_get_generate_status" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-operationId"><code>operationId</code></a></td>
    <td></td>
    <td>Retrieves the status of the recommendation computation or generation process. Invoke this API after calling the generation recommendation. The URI of this API is returned in the Location field of the response header.</td>
</tr>
<tr>
    <td><a href="#predict"><CopyableCode code="predict" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
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
<tr id="parameter-operationId">
    <td><CopyableCode code="operationId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The operation ID, which can be found from the Location field in the generate recommendation response header.</td>
</tr>
<tr id="parameter-recommendationId">
    <td><CopyableCode code="recommendationId" /></td>
    <td><code>string</code></td>
    <td>The recommendation ID.</td>
</tr>
<tr id="parameter-resourceUri">
    <td><CopyableCode code="resourceUri" /></td>
    <td><code>string</code></td>
    <td>The fully qualified Azure Resource Manager identifier of the resource to which the recommendation applies.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The Azure subscription ID.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter to apply to the recommendations.<br />Filter can be applied to properties ['ResourceId', 'ResourceGroup', 'RecommendationTypeGuid', '[Category](#category)'] with operators ['eq', 'and', 'or'].<br />Example:<br />- $filter=Category eq 'Cost' and ResourceGroup eq 'MyResourceGroup'</td>
</tr>
<tr id="parameter-$skipToken">
    <td><CopyableCode code="$skipToken" /></td>
    <td><code>string</code></td>
    <td>The page-continuation token to use with a paged version of this API.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>The number of recommendations per page if a paged version of this API is being used.</td>
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

Obtains details of a cached recommendation.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.advisor.recommendations
WHERE resourceUri = '{{ resourceUri }}' -- required
AND recommendationId = '{{ recommendationId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Obtains cached recommendations for a subscription. The recommendations are generated or computed by invoking generateRecommendations.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.advisor.recommendations
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND $filter = '{{ $filter }}'
AND $top = '{{ $top }}'
AND $skipToken = '{{ $skipToken }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="generate"
    values={[
        { label: 'generate', value: 'generate' },
        { label: 'exec_get_generate_status', value: 'exec_get_generate_status' },
        { label: 'predict', value: 'predict' }
    ]}
>
<TabItem value="generate">

Initiates the recommendation generation or computation process for a subscription. This operation is asynchronous. The generated recommendations are stored in a cache in the Advisor service.

```sql
EXEC azure.advisor.recommendations.generate 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="exec_get_generate_status">

Retrieves the status of the recommendation computation or generation process. Invoke this API after calling the generation recommendation. The URI of this API is returned in the Location field of the response header.

```sql
EXEC azure.advisor.recommendations.exec_get_generate_status 
@subscriptionId='{{ subscriptionId }}' --required, 
@operationId='{{ operationId }}' --required
;
```
</TabItem>
<TabItem value="predict">

OK. Successfully obtained prediction.

```sql
EXEC azure.advisor.recommendations.predict 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
</Tabs>
