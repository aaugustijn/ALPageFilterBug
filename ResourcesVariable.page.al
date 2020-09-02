page 50101 ResourcesVariable
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

    var
        NoFilter: Code[20];

    procedure SetNoFilter(Filter: Code[20])
    begin
        NoFilter := Filter;
    end;

    trigger OnOpenPage()
    begin
        FilterGroup(4);
        // In this page, the set filter can be modified from outside of the page.
        SetFilter("No.", NoFilter);
        FilterGroup(0);
    end;
}