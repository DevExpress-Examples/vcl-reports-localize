<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/1048527919/26.1.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T1305951)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
[![](https://img.shields.io/badge/💬_Leave_Feedback-feecdd?style=flat-square)](#does-this-example-address-your-development-requirementsobjectives)
<!-- default badges end -->

# DevExpress Reports for Delphi/C++Builder — Localize the Report Viewer and Report Designer

This example localizes DevExpress VCL Reports components.

The [DevExpress Reports for Delphi/C++Builder][vcl-reports-intro] fully support UI localization.
The localization example in this repository allows users to select between English (default) and German (localized) versions
of two built-in DevExpress dialogs: [Report Designer][dx-report-designer] and [Report Viewer][dx-report-viewer].
The example includes projects for both [Delphi](./Delphi) and [C++Builder](./CPB).

> <img width="450" src="./images/Lokalisierungsbeispiel.png"
alt="Start screen of the localization example, allowing users to select between English and German,
and to display Report Designer and Report Viewer dialogs" />

## Prerequisites

[DevExpress Reports Prerequisites][req]

[req]: https://docs.devexpress.com/VCL/405773/ExpressCrossPlatformLibrary/vcl-backend/reports-dashboards-app-deployment#vcl-reportsdashboards-prerequisites

## Implementation Details

To localize the DevExpress Report Designer and Report Viewer in your Delphi or C++Builder application,
you must:

1.  Use the [DevExpress UI Localization Service][l10n-service]
    to obtain localization files for DevExpress VCL Report Viewer and Designer.
    These files contain UI string translations for specific languages/locales.
    Refer to the following guide to learn more:
    [Localize Core Reporting Components: Use JSON Files][l10n-json-files].
1.  Extract downloaded files to a [localization] folder next to your compiled application executable.
    Note that projects in this repository output their executables to the same location.
    This allows both projects to use the same localization files.
1.  Assign a language identifier (also known as [locale][locale] or [culture identifier][culture]) to the
    [TdxReport.Language]
    property to switch the Report Designer/Report Viewer to the desired language:

    <!-- start-code-block -->
    #### Delphi
    ```delphi
    dxReport1: TdxReport;
    
    // Switch Report UI to German 
    dxReport1.Language := 'de-DE'
    ```

    #### C++Builder
    ```c
    TdxReport *dxReport1;

    // Switch Report UI to German
	dxReport1->Language = "de-DE";
    ```
    <!-- end-code-block -->

For a step-by-step guide, refer to the following help topic:
[Report Viewer and Designer UI Localization][viewer-designer-l10n].

This example does not localize report content.
To localize report content in your project, refer to the following guide: [Report Content Localization][report-content-l10n].

The localization mechanism described in this example applies only to the DevExpress Report Designer and Report Viewer.
Other DevExpress VCL components support localization using [resource files and the Localizer Editor][localize-an-application].


## Files to Review

-   [uMainForm.pas] (Delphi) and [uMainForm.cpp] (C++Builder) load an example report from [ExampleReport.repx].
    Event handlers assigned to [TcxRadioButton]
    components switch localization language between English and German.
-   [localization/*.de.json][localization] files contain localized UI strings.

## Documentation

-   [VCL Report Viewer and Designer UI Localization][viewer-designer-l10n]
-   [VCL Reports Localization][reports-l10n]
-   [DevExpress UI Localization Service][l10n-service]
-   [ExpressReports Application Deployment Requirements][req]
-   API reference:
    -   [TdxReport](https://docs.devexpress.com/VCL/dxReport.TdxReport)
    -   [TdxReport.Layout](https://docs.devexpress.com/VCL/dxReport.TdxReport.Layout)
    -   [TdxReport.Language]

<!-- documentation links -->
[vcl-reports-intro]: https://docs.devexpress.com/VCL/405469/ExpressReports/vcl-reports
[dx-report-viewer]: https://docs.devexpress.com/XtraReports/401850/web-reporting/web-document-viewer
[dx-report-designer]: https://docs.devexpress.com/XtraReports/119176/web-reporting/web-end-user-report-designer
[reports-l10n]: https://docs.devexpress.com/VCL/405597/ExpressReports/vcl-reports-localization
[report-content-l10n]: https://docs.devexpress.com/VCL/405599/ExpressReports/localization/vcl-report-localization
[viewer-designer-l10n]: https://docs.devexpress.com/VCL/405598/ExpressReports/localization/vcl-report-viewer-and-designer-localization
[l10n-service]: https://docs.devexpress.com/GeneralInformation/16235/localization/localization-service
[l10n-json-files]: https://docs.devexpress.com/XtraReports/400932/web-reporting/common-features/localization/localization-in-asp-net-core-reporting-applications#use-json-files
[localize-an-application]: https://docs.devexpress.com/VCL/154039/ExpressCrossPlatformLibrary/how-to/localize-an-application

<!-- reference links -->
[TdxReport.Language]: https://docs.devexpress.com/VCL/dxReport.TdxReport.Language
[TcxRadioButton]: https://docs.devexpress.com/VCL/cxRadioGroup.TcxRadioButton

<!-- external documentation links -->
[locale]: https://learn.microsoft.com/en-us/globalization/reference/glossary#locale
[culture]: https://learn.microsoft.com/en-us/dotnet/fundamentals/runtime-libraries/system-globalization-cultureinfo#culture-names-and-identifiers

<!-- in-repository links -->
[localization]: ./localization/
[uMainForm.pas]: ./Delphi/uMainForm.pas
[uMainForm.cpp]: ./CPB/uMainForm.cpp
[ExampleReport.repx]: ./ExampleReport.repx


## More Examples

-   [Store Report Layouts in REPX Files][file-example]
-   [Store Report Layouts in a Database][database-example]

[file-example]: https://github.com/DevExpress-Examples/vcl-reports-store-layout-template-file
[database-example]: https://github.com/DevExpress-Examples/vcl-reports-store-layout-template-database


## Localized Report Dialogs Preview

**Localized Report Designer:**

![VCL Report Designer dialog with interface localized into German](./images/Berichtsdesigner.png)

**Localized Report Viewer:**

![VCL Report Viewer dialog with interface localized into German](./images/Berichtsanzeige.png)

<!-- feedback -->
## Does This Example Address Your Development Requirements/Objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=vcl-reports-localize&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=vcl-reports-localize&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->
