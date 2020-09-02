page 50102 ResourcesConst
{
    SourceTable = Resource;
    PageType = List;

    layout
    {
        area(Content)
        {
            repeater(repeater)
            {
                field("No."; "No.")
                {

                }

                field(Name; Name)
                {

                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        FilterGroup(4);
        // In this page, the filter is set as a programming constant.
        SetFilter("No.", 'TEST');
        FilterGroup(0);
    end;
}