--- 
title: configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - configurations
  - ad_hybrid_health_service
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

Creates, updates, deletes, gets or lists a <code>configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>configurations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ad_hybrid_health_service.configurations" /></td></tr>
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

The tenant details.

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
    <td><CopyableCode code="aadLicense" /></td>
    <td><code>string</code></td>
    <td>The Azure Active Directory license of the tenant.</td>
</tr>
<tr>
    <td><CopyableCode code="aadPremium" /></td>
    <td><code>boolean</code></td>
    <td>Indicate if the tenant has Azure Active Directory Premium license or not.</td>
</tr>
<tr>
    <td><CopyableCode code="agentAutoUpdate" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the tenant is configured to automatically receive updates for Azure Active Directory Connect Health client side features.</td>
</tr>
<tr>
    <td><CopyableCode code="alertSuppressionTimeInMins" /></td>
    <td><code>integer</code></td>
    <td>The time in minutes after which an alert will be auto-suppressed.</td>
</tr>
<tr>
    <td><CopyableCode code="consentedToMicrosoftDevOps" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the tenant data can be seen by Microsoft through Azure portal.</td>
</tr>
<tr>
    <td><CopyableCode code="countryLetterCode" /></td>
    <td><code>string</code></td>
    <td>The country letter code of the tenant.</td>
</tr>
<tr>
    <td><CopyableCode code="createdDate" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date, in UTC, when the tenant was onboarded to Azure Active Directory Connect Health.</td>
</tr>
<tr>
    <td><CopyableCode code="devOpsTtl" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time, in UTC, till when the tenant data can be seen by Microsoft through Azure portal.</td>
</tr>
<tr>
    <td><CopyableCode code="disabled" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the tenant is disabled in Azure Active Directory Connect Health.</td>
</tr>
<tr>
    <td><CopyableCode code="disabledReason" /></td>
    <td><code>integer</code></td>
    <td>The reason due to which the tenant was disabled in Azure Active Directory Connect Health.</td>
</tr>
<tr>
    <td><CopyableCode code="globalAdminsEmail" /></td>
    <td><code>array</code></td>
    <td>The list of global administrators for the tenant.</td>
</tr>
<tr>
    <td><CopyableCode code="initialDomain" /></td>
    <td><code>string</code></td>
    <td>The initial domain of the tenant.</td>
</tr>
<tr>
    <td><CopyableCode code="lastDisabled" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time, in UTC, when the tenant was last disabled in Azure Active Directory Connect Health.</td>
</tr>
<tr>
    <td><CopyableCode code="lastVerified" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time, in UTC, when the tenant onboarding status in Azure Active Directory Connect Health was last verified.</td>
</tr>
<tr>
    <td><CopyableCode code="onboarded" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the tenant is already onboarded to Azure Active Directory Connect Health.</td>
</tr>
<tr>
    <td><CopyableCode code="onboardingAllowed" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the tenant is allowed to  onboard to Azure Active Directory Connect Health.</td>
</tr>
<tr>
    <td><CopyableCode code="pksCertificate" /></td>
    <td><code>object</code></td>
    <td>The certificate associated with the tenant to onboard data to Azure Active Directory Connect Health.</td>
</tr>
<tr>
    <td><CopyableCode code="privatePreviewTenant" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the tenant has signed up for private preview of Azure Active Directory Connect Health features.</td>
</tr>
<tr>
    <td><CopyableCode code="tenantId" /></td>
    <td><code>string</code></td>
    <td>The Id of the tenant.</td>
</tr>
<tr>
    <td><CopyableCode code="tenantInQuarantine" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if data collection for this tenant is disabled or not.</td>
</tr>
<tr>
    <td><CopyableCode code="tenantName" /></td>
    <td><code>string</code></td>
    <td>The name of the tenant.</td>
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
    <td></td>
    <td></td>
    <td>Gets the details of a tenant onboarded to Azure Active Directory Connect Health.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td></td>
    <td></td>
    <td>Updates tenant properties for tenants onboarded to Azure Active Directory Connect Health.</td>
</tr>
<tr>
    <td><a href="#add"><CopyableCode code="add" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td></td>
    <td></td>
    <td>Onboards a tenant in Azure Active Directory Connect Health.</td>
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

Gets the details of a tenant onboarded to Azure Active Directory Connect Health.

```sql
SELECT
aadLicense,
aadPremium,
agentAutoUpdate,
alertSuppressionTimeInMins,
consentedToMicrosoftDevOps,
countryLetterCode,
createdDate,
devOpsTtl,
disabled,
disabledReason,
globalAdminsEmail,
initialDomain,
lastDisabled,
lastVerified,
onboarded,
onboardingAllowed,
pksCertificate,
privatePreviewTenant,
tenantId,
tenantInQuarantine,
tenantName
FROM azure.ad_hybrid_health_service.configurations
;
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

Updates tenant properties for tenants onboarded to Azure Active Directory Connect Health.

```sql
UPDATE azure.ad_hybrid_health_service.configurations
SET 
data__tenantId = '{{ tenantId }}',
data__aadLicense = '{{ aadLicense }}',
data__aadPremium = {{ aadPremium }},
data__agentAutoUpdate = {{ agentAutoUpdate }},
data__alertSuppressionTimeInMins = {{ alertSuppressionTimeInMins }},
data__consentedToMicrosoftDevOps = {{ consentedToMicrosoftDevOps }},
data__countryLetterCode = '{{ countryLetterCode }}',
data__createdDate = '{{ createdDate }}',
data__devOpsTtl = '{{ devOpsTtl }}',
data__disabled = {{ disabled }},
data__disabledReason = {{ disabledReason }},
data__globalAdminsEmail = '{{ globalAdminsEmail }}',
data__initialDomain = '{{ initialDomain }}',
data__lastDisabled = '{{ lastDisabled }}',
data__lastVerified = '{{ lastVerified }}',
data__onboardingAllowed = {{ onboardingAllowed }},
data__onboarded = {{ onboarded }},
data__pksCertificate = '{{ pksCertificate }}',
data__privatePreviewTenant = {{ privatePreviewTenant }},
data__tenantInQuarantine = {{ tenantInQuarantine }},
data__tenantName = '{{ tenantName }}'
RETURNING
aadLicense,
aadPremium,
agentAutoUpdate,
alertSuppressionTimeInMins,
consentedToMicrosoftDevOps,
countryLetterCode,
createdDate,
devOpsTtl,
disabled,
disabledReason,
globalAdminsEmail,
initialDomain,
lastDisabled,
lastVerified,
onboarded,
onboardingAllowed,
pksCertificate,
privatePreviewTenant,
tenantId,
tenantInQuarantine,
tenantName;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="add"
    values={[
        { label: 'add', value: 'add' }
    ]}
>
<TabItem value="add">

Onboards a tenant in Azure Active Directory Connect Health.

```sql
EXEC azure.ad_hybrid_health_service.configurations.add 

;
```
</TabItem>
</Tabs>
