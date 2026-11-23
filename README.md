# Sales performance versus targets

**Status: synthetic build-in-progress case study, not a completed Power BI report.**

Prepared with assistant support for review, testing and adaptation. This is not presented as prior independent work or a real company engagement. No confidential employer data is included.

## Business question
Which month, region and channel missed or exceeded target?

## Data and method
37 sales transactions and 13 monthly region/channel targets. Targets are not allocated to salespeople. Target, gap and attainment are hidden when salesperson detail filters are used.

## Reference results and limits
Synthetic net sales are EGP 639,860 versus target EGP 624,000, a positive gap of EGP 15,860 and attainment of 102.5417%. Zero-target attainment must be blank, not infinity or 0%. No forecast, growth or causal claim is made.

All figures describe the designed synthetic scenario, not an actual business outcome. Reference calculations and input checks were performed outside Power BI. They are acceptance targets, not proof that the M, DAX or native model works.

## Included assets
Synthetic input data, data dictionary, model specification, Power Query M source, DAX measure source, report-build steps and expected-results tests. See the supplied build documentation for table grains, relationship directions, measure definitions, tests and exclusions.

## Not yet implemented or verified
No PBIX or completed native Power BI report is included. M and DAX have not been executed in Power BI Desktop. Relationships, refresh, visuals, slicers, drill-through and interactions still need native implementation and testing. No RLS, incremental refresh, gateway or built-in time intelligence is claimed.

## Completion criteria
Import and type the source data; validate keys and relationships; create each measure; compare whole-data and filtered results; test interactions; save and reopen PBIX; record the Desktop version and refresh/test results; capture actual report and Model view screenshots. Update this status only after those checks pass.
