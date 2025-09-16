--- 
title: tickets
hide_title: false
hide_table_of_contents: false
keywords:
  - tickets
  - support
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

Creates, updates, deletes, gets or lists a <code>tickets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>tickets</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.support.tickets" /></td></tr>
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

Successfully retrieved support ticket.

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
    <td>Id of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the resource 'Microsoft.Support/supportTickets'.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Successfully retrieved support tickets.

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
    <td>Id of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the resource 'Microsoft.Support/supportTickets'.</td>
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
    <td><a href="#parameter-supportTicketName"><code>supportTicketName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Get ticket details for an Azure subscription. Support ticket data is available for 18 months after ticket creation. If a ticket was created more than 18 months ago, a request for data might cause an error.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Lists all the support tickets for an Azure subscription. You can also filter the support tickets by _Status_, _CreatedDate_, _ServiceId_, and _ProblemClassificationId_ using the $filter parameter. Output will be a paged result with _nextLink_, using which you can retrieve the next set of support tickets. <br /><br />Support ticket data is available for 18 months after ticket creation. If a ticket was created more than 18 months ago, a request for data might cause an error.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-supportTicketName"><code>supportTicketName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates a new support ticket for Subscription and Service limits (Quota), Technical, Billing, and Subscription Management issues for the specified subscription. Learn the [prerequisites](https://aka.ms/supportAPI) required to create a support ticket.<br /><br />Always call the Services and ProblemClassifications API to get the most recent set of services and problem categories required for support ticket creation.<br /><br />Adding attachments is not currently supported via the API. To add a file to an existing support ticket, visit the [Manage support ticket](https://portal.azure.com/#blade/Microsoft_Azure_Support/HelpAndSupportBlade/managesupportrequest) page in the Azure portal, select the support ticket, and use the file upload control to add a new file.<br /><br />Providing consent to share diagnostic information with Azure support is currently not supported via the API. The Azure support engineer working on your ticket will reach out to you for consent if your issue requires gathering diagnostic information from your Azure resources.<br /><br />**Creating a support ticket for on-behalf-of**: Include _x-ms-authorization-auxiliary_ header to provide an auxiliary token as per [documentation](https://docs.microsoft.com/azure/azure-resource-manager/management/authenticate-multi-tenant). The primary token will be from the tenant for whom a support ticket is being raised against the subscription, i.e. Cloud solution provider (CSP) customer tenant. The auxiliary token will be from the Cloud solution provider (CSP) partner tenant.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-supportTicketName"><code>supportTicketName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>This API allows you to update the severity level, ticket status, advanced diagnostic consent and your contact information in the support ticket.<br /><br />Note: The severity levels cannot be changed if a support ticket is actively being worked upon by an Azure support engineer. In such a case, contact your support engineer to request severity update by adding a new communication using the Communications API.</td>
</tr>
<tr>
    <td><a href="#check_name_availability"><CopyableCode code="check_name_availability" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td></td>
    <td>Check the availability of a resource name. This API should be used to check the uniqueness of the name for support ticket creation for the selected subscription.</td>
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
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Azure subscription Id.</td>
</tr>
<tr id="parameter-supportTicketName">
    <td><CopyableCode code="supportTicketName" /></td>
    <td><code>string</code></td>
    <td>Support ticket name.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter to apply on the operation. We support 'odata v4.0' filter semantics. [Learn more](https://docs.microsoft.com/odata/concepts/queryoptions-overview). _Status_, _ServiceId_, and _ProblemClassificationId_ filters can only be used with Equals ('eq') operator. For _CreatedDate_ filter, the supported operators are Greater Than ('gt') and Greater Than or Equals ('ge'). When using both filters, combine them using the logical 'AND'.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>The number of values to return in the collection. Default is 25 and max is 100.</td>
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

Get ticket details for an Azure subscription. Support ticket data is available for 18 months after ticket creation. If a ticket was created more than 18 months ago, a request for data might cause an error.

```sql
SELECT
id,
name,
properties,
type
FROM azure.support.tickets
WHERE supportTicketName = '{{ supportTicketName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists all the support tickets for an Azure subscription. You can also filter the support tickets by _Status_, _CreatedDate_, _ServiceId_, and _ProblemClassificationId_ using the $filter parameter. Output will be a paged result with _nextLink_, using which you can retrieve the next set of support tickets. <br /><br />Support ticket data is available for 18 months after ticket creation. If a ticket was created more than 18 months ago, a request for data might cause an error.

```sql
SELECT
id,
name,
properties,
type
FROM azure.support.tickets
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND $top = '{{ $top }}'
AND $filter = '{{ $filter }}'
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

Creates a new support ticket for Subscription and Service limits (Quota), Technical, Billing, and Subscription Management issues for the specified subscription. Learn the [prerequisites](https://aka.ms/supportAPI) required to create a support ticket.<br /><br />Always call the Services and ProblemClassifications API to get the most recent set of services and problem categories required for support ticket creation.<br /><br />Adding attachments is not currently supported via the API. To add a file to an existing support ticket, visit the [Manage support ticket](https://portal.azure.com/#blade/Microsoft_Azure_Support/HelpAndSupportBlade/managesupportrequest) page in the Azure portal, select the support ticket, and use the file upload control to add a new file.<br /><br />Providing consent to share diagnostic information with Azure support is currently not supported via the API. The Azure support engineer working on your ticket will reach out to you for consent if your issue requires gathering diagnostic information from your Azure resources.<br /><br />**Creating a support ticket for on-behalf-of**: Include _x-ms-authorization-auxiliary_ header to provide an auxiliary token as per [documentation](https://docs.microsoft.com/azure/azure-resource-manager/management/authenticate-multi-tenant). The primary token will be from the tenant for whom a support ticket is being raised against the subscription, i.e. Cloud solution provider (CSP) customer tenant. The auxiliary token will be from the Cloud solution provider (CSP) partner tenant.

```sql
INSERT INTO azure.support.tickets (
data__properties,
supportTicketName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ supportTicketName }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: tickets
  props:
    - name: supportTicketName
      value: string
      description: Required parameter for the tickets resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the tickets resource.
    - name: properties
      value: object
      description: |
        Properties of the resource.
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

This API allows you to update the severity level, ticket status, advanced diagnostic consent and your contact information in the support ticket.<br /><br />Note: The severity levels cannot be changed if a support ticket is actively being worked upon by an Azure support engineer. In such a case, contact your support engineer to request severity update by adding a new communication using the Communications API.

```sql
UPDATE azure.support.tickets
SET 
data__severity = '{{ severity }}',
data__status = '{{ status }}',
data__contactDetails = '{{ contactDetails }}',
data__advancedDiagnosticConsent = '{{ advancedDiagnosticConsent }}',
data__secondaryConsent = '{{ secondaryConsent }}'
WHERE 
supportTicketName = '{{ supportTicketName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
id,
name,
properties,
type;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="check_name_availability"
    values={[
        { label: 'check_name_availability', value: 'check_name_availability' }
    ]}
>
<TabItem value="check_name_availability">

Check the availability of a resource name. This API should be used to check the uniqueness of the name for support ticket creation for the selected subscription.

```sql
EXEC azure.support.tickets.check_name_availability 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"name": "{{ name }}", 
"type": "{{ type }}"
}'
;
```
</TabItem>
</Tabs>
