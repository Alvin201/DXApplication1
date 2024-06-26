﻿using DevExpress.ExpressApp.DC;
using DevExpress.Persistent.Base;
using DevExpress.Persistent.BaseImpl.EF;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DXApplication1.Module.BusinessObjects
{
	[NavigationItem("Planning")]
	[Table("ProjectTask")]
	public class ProjectTask : BaseObject
	{
		[FieldSize(255)]
		public virtual string Subject { get; set; }

		public virtual ProjectTaskStatus Status { get; set; }

		public virtual ApplicationUser AssignedTo { get; set; }

		public virtual DateTime? DueDate { get; set; }

		public virtual DateTime? StartDate { get; set; }

		public virtual DateTime? EndDate { get; set; }

		[StringLength(4096)]
		public virtual string Notes { get; set; }

		public virtual Project Project { get; set; }

	}

	public enum ProjectTaskStatus
	{
		NotStarted = 0,
		InProgress = 1,
		Completed = 2,
		Deferred = 3
	}
}
