--- 
title: domains
hide_title: false
hide_table_of_contents: false
keywords:
  - domains
  - communication
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

Creates, updates, deletes, gets or lists a <code>domains</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>domains</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.communication.domains" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_email_service_resource', value: 'list_by_email_service_resource' }
    ]}
>
<TabItem value="get">

Success. The response describe the corresponding Domains resource.

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of a Domains resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_email_service_resource">

Success. The response describes the list of Domains resources under the parent EmailServices resource.

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of a Domains resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-emailServiceName"><code>emailServiceName</code></a>, <a href="#parameter-domainName"><code>domainName</code></a></td>
    <td></td>
    <td>Get the Domains resource and its properties.</td>
</tr>
<tr>
    <td><a href="#list_by_email_service_resource"><CopyableCode code="list_by_email_service_resource" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-emailServiceName"><code>emailServiceName</code></a></td>
    <td></td>
    <td>Handles requests to list all Domains resources under the parent EmailServices resource.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-emailServiceName"><code>emailServiceName</code></a>, <a href="#parameter-domainName"><code>domainName</code></a></td>
    <td></td>
    <td>Add a new Domains resource under the parent EmailService resource or update an existing Domains resource.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-emailServiceName"><code>emailServiceName</code></a>, <a href="#parameter-domainName"><code>domainName</code></a></td>
    <td></td>
    <td>Operation to update an existing Domains resource.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-emailServiceName"><code>emailServiceName</code></a>, <a href="#parameter-domainName"><code>domainName</code></a></td>
    <td></td>
    <td>Operation to delete a Domains resource.</td>
</tr>
<tr>
    <td><a href="#initiate_verification"><CopyableCode code="initiate_verification" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-emailServiceName"><code>emailServiceName</code></a>, <a href="#parameter-domainName"><code>domainName</code></a>, <a href="#parameter-verificationType"><code>verificationType</code></a></td>
    <td></td>
    <td>Initiate verification of DNS record.</td>
</tr>
<tr>
    <td><a href="#cancel_verification"><CopyableCode code="cancel_verification" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-emailServiceName"><code>emailServiceName</code></a>, <a href="#parameter-domainName"><code>domainName</code></a>, <a href="#parameter-verificationType"><code>verificationType</code></a></td>
    <td></td>
    <td>Cancel verification of DNS record.</td>
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
<tr id="parameter-domainName">
    <td><CopyableCode code="domainName" /></td>
    <td><code>string</code></td>
    <td>The name of the Domains resource.</td>
</tr>
<tr id="parameter-emailServiceName">
    <td><CopyableCode code="emailServiceName" /></td>
    <td><code>string</code></td>
    <td>The name of the EmailService resource.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_email_service_resource', value: 'list_by_email_service_resource' }
    ]}
>
<TabItem value="get">

Get the Domains resource and its properties.

```sql
SELECT
location,
properties,
tags
FROM azure.communication.domains
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND emailServiceName = '{{ emailServiceName }}' -- required
AND domainName = '{{ domainName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_email_service_resource">

Handles requests to list all Domains resources under the parent EmailServices resource.

```sql
SELECT
location,
properties,
tags
FROM azure.communication.domains
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND emailServiceName = '{{ emailServiceName }}' -- required
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

Add a new Domains resource under the parent EmailService resource or update an existing Domains resource.

```sql
INSERT INTO azure.communication.domains (
data__tags,
data__location,
data__properties,
subscriptionId,
resourceGroupName,
emailServiceName,
domainName
)
SELECT 
'{{ tags }}',
'{{ location }}',
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ emailServiceName }}',
'{{ domainName }}'
RETURNING
location,
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: domains
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the domains resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the domains resource.
    - name: emailServiceName
      value: string
      description: Required parameter for the domains resource.
    - name: domainName
      value: string
      description: Required parameter for the domains resource.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
    - name: properties
      value: object
      description: |
        The properties of a Domains resource.
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

Operation to update an existing Domains resource.

```sql
UPDATE azure.communication.domains
SET 
data__tags = '{{ tags }}',
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND emailServiceName = '{{ emailServiceName }}' --required
AND domainName = '{{ domainName }}' --required
RETURNING
location,
properties,
tags;
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

Operation to delete a Domains resource.

```sql
DELETE FROM azure.communication.domains
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND emailServiceName = '{{ emailServiceName }}' --required
AND domainName = '{{ domainName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="initiate_verification"
    values={[
        { label: 'initiate_verification', value: 'initiate_verification' },
        { label: 'cancel_verification', value: 'cancel_verification' }
    ]}
>
<TabItem value="initiate_verification">

Initiate verification of DNS record.

```sql
EXEC azure.communication.domains.initiate_verification 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@emailServiceName='{{ emailServiceName }}' --required, 
@domainName='{{ domainName }}' --required 
@@json=
'{
"verificationType": "{{ verificationType }}"
}'
;
```
</TabItem>
<TabItem value="cancel_verification">

Cancel verification of DNS record.

```sql
EXEC azure.communication.domains.cancel_verification 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@emailServiceName='{{ emailServiceName }}' --required, 
@domainName='{{ domainName }}' --required 
@@json=
'{
"verificationType": "{{ verificationType }}"
}'
;
```
</TabItem>
</Tabs>
