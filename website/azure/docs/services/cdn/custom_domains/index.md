--- 
title: custom_domains
hide_title: false
hide_table_of_contents: false
keywords:
  - custom_domains
  - cdn
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

Creates, updates, deletes, gets or lists a <code>custom_domains</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>custom_domains</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cdn.custom_domains" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_endpoint', value: 'list_by_endpoint' }
    ]}
>
<TabItem value="get">

OK. The request has succeeded.

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
    <td>The JSON object that contains the properties of the custom domain to create.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_endpoint">

OK. The request has succeeded.

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
    <td>The JSON object that contains the properties of the custom domain to create.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a>, <a href="#parameter-customDomainName"><code>customDomainName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets an existing custom domain within an endpoint.</td>
</tr>
<tr>
    <td><a href="#list_by_endpoint"><CopyableCode code="list_by_endpoint" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists all of the existing custom domains within an endpoint.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a>, <a href="#parameter-customDomainName"><code>customDomainName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates a new custom domain within an endpoint.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a>, <a href="#parameter-customDomainName"><code>customDomainName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes an existing custom domain within an endpoint.</td>
</tr>
<tr>
    <td><a href="#disable_custom_https"><CopyableCode code="disable_custom_https" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a>, <a href="#parameter-customDomainName"><code>customDomainName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Disable https delivery of the custom domain.</td>
</tr>
<tr>
    <td><a href="#enable_custom_https"><CopyableCode code="enable_custom_https" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a>, <a href="#parameter-customDomainName"><code>customDomainName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-certificateSource"><code>certificateSource</code></a>, <a href="#parameter-protocolType"><code>protocolType</code></a></td>
    <td></td>
    <td>Enable https delivery of the custom domain.</td>
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
<tr id="parameter-customDomainName">
    <td><CopyableCode code="customDomainName" /></td>
    <td><code>string</code></td>
    <td>Name of the custom domain within an endpoint.</td>
</tr>
<tr id="parameter-endpointName">
    <td><CopyableCode code="endpointName" /></td>
    <td><code>string</code></td>
    <td>Name of the endpoint under the profile which is unique globally.</td>
</tr>
<tr id="parameter-profileName">
    <td><CopyableCode code="profileName" /></td>
    <td><code>string</code></td>
    <td>Name of the CDN profile which is unique within the resource group.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the Resource group within the Azure subscription.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Azure Subscription ID.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_endpoint', value: 'list_by_endpoint' }
    ]}
>
<TabItem value="get">

Gets an existing custom domain within an endpoint.

```sql
SELECT
properties
FROM azure.cdn.custom_domains
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND profileName = '{{ profileName }}' -- required
AND endpointName = '{{ endpointName }}' -- required
AND customDomainName = '{{ customDomainName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_endpoint">

Lists all of the existing custom domains within an endpoint.

```sql
SELECT
properties
FROM azure.cdn.custom_domains
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND profileName = '{{ profileName }}' -- required
AND endpointName = '{{ endpointName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
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

Creates a new custom domain within an endpoint.

```sql
INSERT INTO azure.cdn.custom_domains (
data__properties,
resourceGroupName,
profileName,
endpointName,
customDomainName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ profileName }}',
'{{ endpointName }}',
'{{ customDomainName }}',
'{{ subscriptionId }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: custom_domains
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the custom_domains resource.
    - name: profileName
      value: string
      description: Required parameter for the custom_domains resource.
    - name: endpointName
      value: string
      description: Required parameter for the custom_domains resource.
    - name: customDomainName
      value: string
      description: Required parameter for the custom_domains resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the custom_domains resource.
    - name: properties
      value: object
      description: |
        The JSON object that contains the properties of the custom domain to create.
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

Deletes an existing custom domain within an endpoint.

```sql
DELETE FROM azure.cdn.custom_domains
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND profileName = '{{ profileName }}' --required
AND endpointName = '{{ endpointName }}' --required
AND customDomainName = '{{ customDomainName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="disable_custom_https"
    values={[
        { label: 'disable_custom_https', value: 'disable_custom_https' },
        { label: 'enable_custom_https', value: 'enable_custom_https' }
    ]}
>
<TabItem value="disable_custom_https">

Disable https delivery of the custom domain.

```sql
EXEC azure.cdn.custom_domains.disable_custom_https 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@profileName='{{ profileName }}' --required, 
@endpointName='{{ endpointName }}' --required, 
@customDomainName='{{ customDomainName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="enable_custom_https">

Enable https delivery of the custom domain.

```sql
EXEC azure.cdn.custom_domains.enable_custom_https 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@profileName='{{ profileName }}' --required, 
@endpointName='{{ endpointName }}' --required, 
@customDomainName='{{ customDomainName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"certificateSource": "{{ certificateSource }}", 
"protocolType": "{{ protocolType }}", 
"minimumTlsVersion": "{{ minimumTlsVersion }}"
}'
;
```
</TabItem>
</Tabs>
