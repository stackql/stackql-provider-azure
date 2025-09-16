--- 
title: scope_access_review_history_definition_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - scope_access_review_history_definition_instances
  - authorization
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

Creates, updates, deletes, gets or lists a <code>scope_access_review_history_definition_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>scope_access_review_history_definition_instances</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.authorization.scope_access_review_history_definition_instances" /></td></tr>
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

Describe the result of a successful operation.

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
    <td>The access review history definition instance id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The access review history definition instance unique id.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Access Review History Definition Instance properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The resource type.</td>
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
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-historyDefinitionId"><code>historyDefinitionId</code></a></td>
    <td></td>
    <td>Get access review history definition instances by definition Id</td>
</tr>
<tr>
    <td><a href="#generate_download_uri"><CopyableCode code="generate_download_uri" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-historyDefinitionId"><code>historyDefinitionId</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a></td>
    <td></td>
    <td>Generates a uri which can be used to retrieve review history data. This URI has a TTL of 1 day and can be retrieved by fetching the accessReviewHistoryDefinition object.</td>
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
<tr id="parameter-historyDefinitionId">
    <td><CopyableCode code="historyDefinitionId" /></td>
    <td><code>string</code></td>
    <td>The id of the access review history definition.</td>
</tr>
<tr id="parameter-instanceId">
    <td><CopyableCode code="instanceId" /></td>
    <td><code>string</code></td>
    <td>The id of the access review history definition instance to generate a URI for.</td>
</tr>
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>The scope of the operation or resource. Valid scopes are: subscription (format: '/subscriptions/&#123;subscriptionId&#125;'), resource group (format: '/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;', or resource (format: '/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/[&#123;parentResourcePath&#125;/]&#123;resourceType&#125;/&#123;resourceName&#125;'</td>
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

Get access review history definition instances by definition Id

```sql
SELECT
id,
name,
properties,
type
FROM azure.authorization.scope_access_review_history_definition_instances
WHERE scope = '{{ scope }}' -- required
AND historyDefinitionId = '{{ historyDefinitionId }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="generate_download_uri"
    values={[
        { label: 'generate_download_uri', value: 'generate_download_uri' }
    ]}
>
<TabItem value="generate_download_uri">

Generates a uri which can be used to retrieve review history data. This URI has a TTL of 1 day and can be retrieved by fetching the accessReviewHistoryDefinition object.

```sql
EXEC azure.authorization.scope_access_review_history_definition_instances.generate_download_uri 
@scope='{{ scope }}' --required, 
@historyDefinitionId='{{ historyDefinitionId }}' --required, 
@instanceId='{{ instanceId }}' --required
;
```
</TabItem>
</Tabs>
