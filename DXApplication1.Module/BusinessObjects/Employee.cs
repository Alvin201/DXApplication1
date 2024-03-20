using DevExpress.Data.Filtering;
using DevExpress.ExpressApp;
using DevExpress.ExpressApp.DC;
using DevExpress.ExpressApp.Model;
using DevExpress.Persistent.Base;
using DevExpress.Persistent.BaseImpl.EF;
using DevExpress.Persistent.Validation;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;

namespace DXApplication1.Module.BusinessObjects
{
	// Register this entity in your DbContext (usually in the BusinessObjects folder of your project) with the "public DbSet<Customer> Customers { get; set; }" syntax.
	[DefaultClassOptions]
	//[ImageName("BO_Contact")]
	//[DefaultProperty("Name")]
	//[DefaultListViewOptions(MasterDetailMode.ListViewOnly, false, NewItemRowPosition.None)]
	// Specify more UI options using a declarative approach (https://documentation.devexpress.com/#eXpressAppFramework/CustomDocument112701).
	// You do not need to implement the INotifyPropertyChanged interface - EF Core implements it automatically.
	// (see https://learn.microsoft.com/en-us/ef/core/change-tracking/change-detection#change-tracking-proxies for details).
	[DefaultProperty(nameof(FullName))]
	public class Employee : BaseObject
	{
		public virtual String FirstName { get; set; }
		public virtual String LastName { get; set; }
		public String FullName
		{
			get
			{
				return ObjectFormatter.Format("{FirstName} {LastName}",
			this, EmptyEntriesMode.RemoveDelimiterWhenEntryIsEmpty);
			}
		}
	}


}