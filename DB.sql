USE [master]
GO
/****** Object:  Database [DXApplication1]    Script Date: 3/20/2024 9:00:49 AM ******/
CREATE DATABASE [DXApplication1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TestLA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TestLA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TestLA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TestLA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DXApplication1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DXApplication1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DXApplication1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DXApplication1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DXApplication1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DXApplication1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DXApplication1] SET ARITHABORT OFF 
GO
ALTER DATABASE [DXApplication1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DXApplication1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DXApplication1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DXApplication1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DXApplication1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DXApplication1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DXApplication1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DXApplication1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DXApplication1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DXApplication1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DXApplication1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DXApplication1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DXApplication1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DXApplication1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DXApplication1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DXApplication1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DXApplication1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DXApplication1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DXApplication1] SET  MULTI_USER 
GO
ALTER DATABASE [DXApplication1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DXApplication1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DXApplication1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DXApplication1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DXApplication1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DXApplication1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DXApplication1] SET QUERY_STORE = OFF
GO
USE [DXApplication1]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/20/2024 9:00:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModelDifferenceAspects]    Script Date: 3/20/2024 9:00:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModelDifferenceAspects](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Xml] [nvarchar](max) NULL,
	[OwnerID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_ModelDifferenceAspects] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModelDifferences]    Script Date: 3/20/2024 9:00:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModelDifferences](
	[ID] [uniqueidentifier] NOT NULL,
	[UserId] [nvarchar](max) NULL,
	[ContextId] [nvarchar](max) NULL,
	[Version] [int] NOT NULL,
 CONSTRAINT [PK_ModelDifferences] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionPolicyActionPermissionObject]    Script Date: 3/20/2024 9:00:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionPolicyActionPermissionObject](
	[ID] [uniqueidentifier] NOT NULL,
	[RoleID] [uniqueidentifier] NULL,
	[ActionId] [nvarchar](max) NULL,
 CONSTRAINT [PK_PermissionPolicyActionPermissionObject] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionPolicyMemberPermissionsObject]    Script Date: 3/20/2024 9:00:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionPolicyMemberPermissionsObject](
	[ID] [uniqueidentifier] NOT NULL,
	[Members] [nvarchar](max) NULL,
	[Criteria] [nvarchar](max) NULL,
	[ReadState] [int] NULL,
	[WriteState] [int] NULL,
	[TypePermissionObjectID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_PermissionPolicyMemberPermissionsObject] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionPolicyNavigationPermissionObject]    Script Date: 3/20/2024 9:00:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionPolicyNavigationPermissionObject](
	[ID] [uniqueidentifier] NOT NULL,
	[RoleID] [uniqueidentifier] NULL,
	[ItemPath] [nvarchar](max) NULL,
	[TargetTypeFullName] [nvarchar](max) NULL,
	[NavigateState] [int] NULL,
 CONSTRAINT [PK_PermissionPolicyNavigationPermissionObject] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionPolicyObjectPermissionsObject]    Script Date: 3/20/2024 9:00:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionPolicyObjectPermissionsObject](
	[ID] [uniqueidentifier] NOT NULL,
	[Criteria] [nvarchar](max) NULL,
	[ReadState] [int] NULL,
	[WriteState] [int] NULL,
	[DeleteState] [int] NULL,
	[NavigateState] [int] NULL,
	[TypePermissionObjectID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_PermissionPolicyObjectPermissionsObject] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionPolicyRoleBase]    Script Date: 3/20/2024 9:00:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionPolicyRoleBase](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[IsAdministrative] [bit] NOT NULL,
	[CanEditModel] [bit] NOT NULL,
	[PermissionPolicy] [int] NOT NULL,
	[IsAllowPermissionPriority] [bit] NOT NULL,
	[Discriminator] [nvarchar](34) NOT NULL,
 CONSTRAINT [PK_PermissionPolicyRoleBase] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionPolicyRolePermissionPolicyUser]    Script Date: 3/20/2024 9:00:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionPolicyRolePermissionPolicyUser](
	[RolesID] [uniqueidentifier] NOT NULL,
	[UsersID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_PermissionPolicyRolePermissionPolicyUser] PRIMARY KEY CLUSTERED 
(
	[RolesID] ASC,
	[UsersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionPolicyTypePermissionObject]    Script Date: 3/20/2024 9:00:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionPolicyTypePermissionObject](
	[ID] [uniqueidentifier] NOT NULL,
	[TargetTypeFullName] [nvarchar](max) NULL,
	[RoleID] [uniqueidentifier] NULL,
	[ReadState] [int] NULL,
	[WriteState] [int] NULL,
	[CreateState] [int] NULL,
	[DeleteState] [int] NULL,
	[NavigateState] [int] NULL,
 CONSTRAINT [PK_PermissionPolicyTypePermissionObject] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionPolicyUser]    Script Date: 3/20/2024 9:00:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionPolicyUser](
	[ID] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[ChangePasswordOnFirstLogon] [bit] NOT NULL,
	[StoredPassword] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](21) NOT NULL,
	[AccessFailedCount] [int] NULL,
	[LockoutEnd] [datetime2](7) NULL,
 CONSTRAINT [PK_PermissionPolicyUser] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionPolicyUserLoginInfo]    Script Date: 3/20/2024 9:00:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionPolicyUserLoginInfo](
	[ID] [uniqueidentifier] NOT NULL,
	[LoginProviderName] [nvarchar](450) NULL,
	[ProviderUserKey] [nvarchar](450) NULL,
	[UserForeignKey] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_PermissionPolicyUserLoginInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 3/20/2024 9:00:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ManagerID] [uniqueidentifier] NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectTask]    Script Date: 3/20/2024 9:00:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectTask](
	[ID] [uniqueidentifier] NOT NULL,
	[Subject] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[AssignedToID] [uniqueidentifier] NULL,
	[DueDate] [datetime2](7) NULL,
	[StartDate] [datetime2](7) NULL,
	[EndDate] [datetime2](7) NULL,
	[Notes] [nvarchar](max) NULL,
	[ProjectID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_ProjectTask] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240320002922_MyInitialMigrationNamePro', N'8.0.3')
GO
INSERT [dbo].[ModelDifferenceAspects] ([ID], [Name], [Xml], [OwnerID]) VALUES (N'910f85be-815b-41dd-832d-08dc4876edc0', N'', N'<?xml version="1.0" encoding="utf-8"?>
<Application>
  <SchemaModules>
    <SchemaModule Name="SystemModule" Version="23.2.5.0" IsNewNode="True" />
  </SchemaModules>
  <Views>
    <DetailView Id="PermissionPolicyRole_DetailView">
      <Layout>
        <LayoutGroup Id="Main">
          <TabbedGroup Id="Tabs1" ActiveTabIndex="1" />
        </LayoutGroup>
      </Layout>
    </DetailView>
    <ListView Id="PermissionPolicyRoleBase_TypePermissions_ListView">
      <Columns>
        <ColumnInfo Id="TargetType" SortOrder="Descending" SortIndex="0" />
      </Columns>
    </ListView>
    <DetailView Id="PermissionPolicyTypePermissionObject_DetailView">
      <Layout>
        <LayoutGroup Id="Main">
          <TabbedGroup Id="Tabs" ActiveTabIndex="1" />
        </LayoutGroup>
      </Layout>
    </DetailView>
  </Views>
</Application>', N'f26339d8-1d24-4be6-c093-08dc4876edba')
INSERT [dbo].[ModelDifferenceAspects] ([ID], [Name], [Xml], [OwnerID]) VALUES (N'45a92557-3734-460f-dabe-08dc4879a576', N'', N'<?xml version="1.0" encoding="utf-8"?>
<Application>
  <SchemaModules>
    <SchemaModule Name="SystemModule" Version="23.2.5.0" IsNewNode="True" />
  </SchemaModules>
</Application>', N'9e9a4a60-1d4f-4f99-ec72-08dc4879a570')
GO
INSERT [dbo].[ModelDifferences] ([ID], [UserId], [ContextId], [Version]) VALUES (N'f26339d8-1d24-4be6-c093-08dc4876edba', N'4a4566f3-b1d1-45bc-23e2-08dc48733829', N'Blazor', 0)
INSERT [dbo].[ModelDifferences] ([ID], [UserId], [ContextId], [Version]) VALUES (N'9e9a4a60-1d4f-4f99-ec72-08dc4879a570', N'a2496cc0-f998-4305-f59f-08dc48741f9d', N'Blazor', 0)
GO
INSERT [dbo].[PermissionPolicyMemberPermissionsObject] ([ID], [Members], [Criteria], [ReadState], [WriteState], [TypePermissionObjectID]) VALUES (N'5e399337-ba7a-4ffe-a6a0-08dc487337f3', N'ChangePasswordOnFirstLogon', N'[ID] = CurrentUserId()', NULL, 1, N'6c8b8939-9329-4866-6d47-08dc487337b2')
INSERT [dbo].[PermissionPolicyMemberPermissionsObject] ([ID], [Members], [Criteria], [ReadState], [WriteState], [TypePermissionObjectID]) VALUES (N'00588458-2903-4386-a6a1-08dc487337f3', N'StoredPassword', N'[ID] = CurrentUserId()', NULL, 1, N'6c8b8939-9329-4866-6d47-08dc487337b2')
GO
INSERT [dbo].[PermissionPolicyNavigationPermissionObject] ([ID], [RoleID], [ItemPath], [TargetTypeFullName], [NavigateState]) VALUES (N'ca5a1c87-8c6d-48eb-ab73-08dc487337e1', N'78bb4849-225e-475e-afbe-08dc48733779', N'Application/NavigationItems/Items/Default/Items/MyDetails', NULL, 1)
GO
INSERT [dbo].[PermissionPolicyObjectPermissionsObject] ([ID], [Criteria], [ReadState], [WriteState], [DeleteState], [NavigateState], [TypePermissionObjectID]) VALUES (N'78a67832-a6af-436a-531a-08dc487337cd', N'[ID] = CurrentUserId()', 1, NULL, NULL, NULL, N'6c8b8939-9329-4866-6d47-08dc487337b2')
INSERT [dbo].[PermissionPolicyObjectPermissionsObject] ([ID], [Criteria], [ReadState], [WriteState], [DeleteState], [NavigateState], [TypePermissionObjectID]) VALUES (N'2c40f0aa-690f-4708-531b-08dc487337cd', N'UserId = ToStr(CurrentUserId())', 1, 1, NULL, NULL, N'639ea97b-3925-44e4-6d49-08dc487337b2')
INSERT [dbo].[PermissionPolicyObjectPermissionsObject] ([ID], [Criteria], [ReadState], [WriteState], [DeleteState], [NavigateState], [TypePermissionObjectID]) VALUES (N'59912d23-550d-4471-531c-08dc487337cd', N'Owner.UserId = ToStr(CurrentUserId())', 1, 1, NULL, NULL, N'a4a18498-af85-4aee-6d4a-08dc487337b2')
GO
INSERT [dbo].[PermissionPolicyRoleBase] ([ID], [Name], [IsAdministrative], [CanEditModel], [PermissionPolicy], [IsAllowPermissionPriority], [Discriminator]) VALUES (N'78bb4849-225e-475e-afbe-08dc48733779', N'Default', 0, 0, 0, 0, N'PermissionPolicyRole')
INSERT [dbo].[PermissionPolicyRoleBase] ([ID], [Name], [IsAdministrative], [CanEditModel], [PermissionPolicy], [IsAllowPermissionPriority], [Discriminator]) VALUES (N'fa327610-39ab-4c85-afbf-08dc48733779', N'Administrators', 1, 0, 0, 0, N'PermissionPolicyRole')
INSERT [dbo].[PermissionPolicyRoleBase] ([ID], [Name], [IsAdministrative], [CanEditModel], [PermissionPolicy], [IsAllowPermissionPriority], [Discriminator]) VALUES (N'bf1d66bf-2330-4456-83e3-08dc487422af', N'SPV', 1, 0, 0, 0, N'PermissionPolicyRole')
INSERT [dbo].[PermissionPolicyRoleBase] ([ID], [Name], [IsAdministrative], [CanEditModel], [PermissionPolicy], [IsAllowPermissionPriority], [Discriminator]) VALUES (N'ffacf7ea-5f70-46bf-83e5-08dc487422af', N'Staff', 0, 0, 1, 0, N'PermissionPolicyRole')
GO
INSERT [dbo].[PermissionPolicyRolePermissionPolicyUser] ([RolesID], [UsersID]) VALUES (N'78bb4849-225e-475e-afbe-08dc48733779', N'a780c144-0d98-433b-23e1-08dc48733829')
INSERT [dbo].[PermissionPolicyRolePermissionPolicyUser] ([RolesID], [UsersID]) VALUES (N'fa327610-39ab-4c85-afbf-08dc48733779', N'4a4566f3-b1d1-45bc-23e2-08dc48733829')
INSERT [dbo].[PermissionPolicyRolePermissionPolicyUser] ([RolesID], [UsersID]) VALUES (N'bf1d66bf-2330-4456-83e3-08dc487422af', N'a2496cc0-f998-4305-f59f-08dc48741f9d')
INSERT [dbo].[PermissionPolicyRolePermissionPolicyUser] ([RolesID], [UsersID]) VALUES (N'ffacf7ea-5f70-46bf-83e5-08dc487422af', N'4bf2ba4a-8b59-44a6-f5a0-08dc48741f9d')
GO
INSERT [dbo].[PermissionPolicyTypePermissionObject] ([ID], [TargetTypeFullName], [RoleID], [ReadState], [WriteState], [CreateState], [DeleteState], [NavigateState]) VALUES (N'6c8b8939-9329-4866-6d47-08dc487337b2', N'DXApplication1.Module.BusinessObjects.ApplicationUser', N'78bb4849-225e-475e-afbe-08dc48733779', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PermissionPolicyTypePermissionObject] ([ID], [TargetTypeFullName], [RoleID], [ReadState], [WriteState], [CreateState], [DeleteState], [NavigateState]) VALUES (N'2873bd46-af93-4ea3-6d48-08dc487337b2', N'DevExpress.Persistent.BaseImpl.EF.PermissionPolicy.PermissionPolicyRole', N'78bb4849-225e-475e-afbe-08dc48733779', 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[PermissionPolicyTypePermissionObject] ([ID], [TargetTypeFullName], [RoleID], [ReadState], [WriteState], [CreateState], [DeleteState], [NavigateState]) VALUES (N'639ea97b-3925-44e4-6d49-08dc487337b2', N'DevExpress.Persistent.BaseImpl.EF.ModelDifference', N'78bb4849-225e-475e-afbe-08dc48733779', NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[PermissionPolicyTypePermissionObject] ([ID], [TargetTypeFullName], [RoleID], [ReadState], [WriteState], [CreateState], [DeleteState], [NavigateState]) VALUES (N'a4a18498-af85-4aee-6d4a-08dc487337b2', N'DevExpress.Persistent.BaseImpl.EF.ModelDifferenceAspect', N'78bb4849-225e-475e-afbe-08dc48733779', NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[PermissionPolicyTypePermissionObject] ([ID], [TargetTypeFullName], [RoleID], [ReadState], [WriteState], [CreateState], [DeleteState], [NavigateState]) VALUES (N'2e0781b6-bce6-4448-0927-08dc4876fde5', N'DXApplication1.Module.BusinessObjects.Project', N'ffacf7ea-5f70-46bf-83e5-08dc487422af', 1, 0, 0, 0, NULL)
INSERT [dbo].[PermissionPolicyTypePermissionObject] ([ID], [TargetTypeFullName], [RoleID], [ReadState], [WriteState], [CreateState], [DeleteState], [NavigateState]) VALUES (N'ce8ae3b6-cbac-4e20-0928-08dc4876fde5', N'DXApplication1.Module.BusinessObjects.ProjectTask', N'ffacf7ea-5f70-46bf-83e5-08dc487422af', 1, 0, 0, 0, NULL)
INSERT [dbo].[PermissionPolicyTypePermissionObject] ([ID], [TargetTypeFullName], [RoleID], [ReadState], [WriteState], [CreateState], [DeleteState], [NavigateState]) VALUES (N'68391fd8-9d2a-4454-0929-08dc4876fde5', N'DXApplication1.Module.BusinessObjects.Employee', N'ffacf7ea-5f70-46bf-83e5-08dc487422af', 1, 0, 0, 0, NULL)
INSERT [dbo].[PermissionPolicyTypePermissionObject] ([ID], [TargetTypeFullName], [RoleID], [ReadState], [WriteState], [CreateState], [DeleteState], [NavigateState]) VALUES (N'd9f0d0b7-1f61-4f3a-092a-08dc4876fde5', N'DevExpress.Persistent.BaseImpl.EF.PermissionPolicy.PermissionPolicyRole', N'ffacf7ea-5f70-46bf-83e5-08dc487422af', 1, 0, 0, 0, NULL)
INSERT [dbo].[PermissionPolicyTypePermissionObject] ([ID], [TargetTypeFullName], [RoleID], [ReadState], [WriteState], [CreateState], [DeleteState], [NavigateState]) VALUES (N'9b6a4556-b5e6-42e4-092c-08dc4876fde5', N'DevExpress.Persistent.BaseImpl.EF.PermissionPolicy.PermissionPolicyUser', N'ffacf7ea-5f70-46bf-83e5-08dc487422af', 1, 0, 0, 0, NULL)
GO
INSERT [dbo].[PermissionPolicyUser] ([ID], [UserName], [IsActive], [ChangePasswordOnFirstLogon], [StoredPassword], [Discriminator], [AccessFailedCount], [LockoutEnd]) VALUES (N'a780c144-0d98-433b-23e1-08dc48733829', N'User', 1, 0, N'', N'ApplicationUser', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[PermissionPolicyUser] ([ID], [UserName], [IsActive], [ChangePasswordOnFirstLogon], [StoredPassword], [Discriminator], [AccessFailedCount], [LockoutEnd]) VALUES (N'4a4566f3-b1d1-45bc-23e2-08dc48733829', N'Admin', 1, 0, N'', N'ApplicationUser', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[PermissionPolicyUser] ([ID], [UserName], [IsActive], [ChangePasswordOnFirstLogon], [StoredPassword], [Discriminator], [AccessFailedCount], [LockoutEnd]) VALUES (N'a2496cc0-f998-4305-f59f-08dc48741f9d', N'spvuser', 1, 0, NULL, N'ApplicationUser', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[PermissionPolicyUser] ([ID], [UserName], [IsActive], [ChangePasswordOnFirstLogon], [StoredPassword], [Discriminator], [AccessFailedCount], [LockoutEnd]) VALUES (N'4bf2ba4a-8b59-44a6-f5a0-08dc48741f9d', N'staffuser', 1, 0, NULL, N'ApplicationUser', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[PermissionPolicyUserLoginInfo] ([ID], [LoginProviderName], [ProviderUserKey], [UserForeignKey]) VALUES (N'0ed1d13f-4df8-431a-5caf-08dc48733867', N'Password', N'a780c144-0d98-433b-23e1-08dc48733829', N'a780c144-0d98-433b-23e1-08dc48733829')
INSERT [dbo].[PermissionPolicyUserLoginInfo] ([ID], [LoginProviderName], [ProviderUserKey], [UserForeignKey]) VALUES (N'169b9570-c483-4e09-5cb0-08dc48733867', N'Password', N'4a4566f3-b1d1-45bc-23e2-08dc48733829', N'4a4566f3-b1d1-45bc-23e2-08dc48733829')
INSERT [dbo].[PermissionPolicyUserLoginInfo] ([ID], [LoginProviderName], [ProviderUserKey], [UserForeignKey]) VALUES (N'dd845b5c-1986-4594-cde1-08dc48744ab7', N'Password', N'a2496cc0-f998-4305-f59f-08dc48741f9d', N'a2496cc0-f998-4305-f59f-08dc48741f9d')
INSERT [dbo].[PermissionPolicyUserLoginInfo] ([ID], [LoginProviderName], [ProviderUserKey], [UserForeignKey]) VALUES (N'125a80b5-244f-4417-cde2-08dc48744ab7', N'Password', N'4bf2ba4a-8b59-44a6-f5a0-08dc48741f9d', N'4bf2ba4a-8b59-44a6-f5a0-08dc48741f9d')
GO
INSERT [dbo].[Projects] ([ID], [Name], [ManagerID], [Description]) VALUES (N'2a63f39d-506c-4ef1-5fca-08dc4879ea34', N'Project A', N'a2496cc0-f998-4305-f59f-08dc48741f9d', NULL)
GO
INSERT [dbo].[ProjectTask] ([ID], [Subject], [Status], [AssignedToID], [DueDate], [StartDate], [EndDate], [Notes], [ProjectID]) VALUES (N'e438247d-d76b-4698-8cda-08dc4879f275', N'kerjakan PR', 0, N'4bf2ba4a-8b59-44a6-f5a0-08dc48741f9d', CAST(N'2024-03-22T00:00:00.0000000' AS DateTime2), CAST(N'2024-03-20T00:00:00.0000000' AS DateTime2), CAST(N'2024-03-22T00:00:00.0000000' AS DateTime2), NULL, N'2a63f39d-506c-4ef1-5fca-08dc4879ea34')
GO
/****** Object:  Index [IX_ModelDifferenceAspects_OwnerID]    Script Date: 3/20/2024 9:00:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_ModelDifferenceAspects_OwnerID] ON [dbo].[ModelDifferenceAspects]
(
	[OwnerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PermissionPolicyActionPermissionObject_RoleID]    Script Date: 3/20/2024 9:00:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_PermissionPolicyActionPermissionObject_RoleID] ON [dbo].[PermissionPolicyActionPermissionObject]
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PermissionPolicyMemberPermissionsObject_TypePermissionObjectID]    Script Date: 3/20/2024 9:00:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_PermissionPolicyMemberPermissionsObject_TypePermissionObjectID] ON [dbo].[PermissionPolicyMemberPermissionsObject]
(
	[TypePermissionObjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PermissionPolicyNavigationPermissionObject_RoleID]    Script Date: 3/20/2024 9:00:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_PermissionPolicyNavigationPermissionObject_RoleID] ON [dbo].[PermissionPolicyNavigationPermissionObject]
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PermissionPolicyObjectPermissionsObject_TypePermissionObjectID]    Script Date: 3/20/2024 9:00:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_PermissionPolicyObjectPermissionsObject_TypePermissionObjectID] ON [dbo].[PermissionPolicyObjectPermissionsObject]
(
	[TypePermissionObjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PermissionPolicyRolePermissionPolicyUser_UsersID]    Script Date: 3/20/2024 9:00:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_PermissionPolicyRolePermissionPolicyUser_UsersID] ON [dbo].[PermissionPolicyRolePermissionPolicyUser]
(
	[UsersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PermissionPolicyTypePermissionObject_RoleID]    Script Date: 3/20/2024 9:00:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_PermissionPolicyTypePermissionObject_RoleID] ON [dbo].[PermissionPolicyTypePermissionObject]
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PermissionPolicyUserLoginInfo_LoginProviderName_ProviderUserKey]    Script Date: 3/20/2024 9:00:49 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_PermissionPolicyUserLoginInfo_LoginProviderName_ProviderUserKey] ON [dbo].[PermissionPolicyUserLoginInfo]
(
	[LoginProviderName] ASC,
	[ProviderUserKey] ASC
)
WHERE ([LoginProviderName] IS NOT NULL AND [ProviderUserKey] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PermissionPolicyUserLoginInfo_UserForeignKey]    Script Date: 3/20/2024 9:00:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_PermissionPolicyUserLoginInfo_UserForeignKey] ON [dbo].[PermissionPolicyUserLoginInfo]
(
	[UserForeignKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Projects_ManagerID]    Script Date: 3/20/2024 9:00:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Projects_ManagerID] ON [dbo].[Projects]
(
	[ManagerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectTask_AssignedToID]    Script Date: 3/20/2024 9:00:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectTask_AssignedToID] ON [dbo].[ProjectTask]
(
	[AssignedToID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectTask_ProjectID]    Script Date: 3/20/2024 9:00:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectTask_ProjectID] ON [dbo].[ProjectTask]
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ModelDifferenceAspects]  WITH CHECK ADD  CONSTRAINT [FK_ModelDifferenceAspects_ModelDifferences_OwnerID] FOREIGN KEY([OwnerID])
REFERENCES [dbo].[ModelDifferences] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ModelDifferenceAspects] CHECK CONSTRAINT [FK_ModelDifferenceAspects_ModelDifferences_OwnerID]
GO
ALTER TABLE [dbo].[PermissionPolicyActionPermissionObject]  WITH CHECK ADD  CONSTRAINT [FK_PermissionPolicyActionPermissionObject_PermissionPolicyRoleBase_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[PermissionPolicyRoleBase] ([ID])
GO
ALTER TABLE [dbo].[PermissionPolicyActionPermissionObject] CHECK CONSTRAINT [FK_PermissionPolicyActionPermissionObject_PermissionPolicyRoleBase_RoleID]
GO
ALTER TABLE [dbo].[PermissionPolicyMemberPermissionsObject]  WITH CHECK ADD  CONSTRAINT [FK_PermissionPolicyMemberPermissionsObject_PermissionPolicyTypePermissionObject_TypePermissionObjectID] FOREIGN KEY([TypePermissionObjectID])
REFERENCES [dbo].[PermissionPolicyTypePermissionObject] ([ID])
GO
ALTER TABLE [dbo].[PermissionPolicyMemberPermissionsObject] CHECK CONSTRAINT [FK_PermissionPolicyMemberPermissionsObject_PermissionPolicyTypePermissionObject_TypePermissionObjectID]
GO
ALTER TABLE [dbo].[PermissionPolicyNavigationPermissionObject]  WITH CHECK ADD  CONSTRAINT [FK_PermissionPolicyNavigationPermissionObject_PermissionPolicyRoleBase_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[PermissionPolicyRoleBase] ([ID])
GO
ALTER TABLE [dbo].[PermissionPolicyNavigationPermissionObject] CHECK CONSTRAINT [FK_PermissionPolicyNavigationPermissionObject_PermissionPolicyRoleBase_RoleID]
GO
ALTER TABLE [dbo].[PermissionPolicyObjectPermissionsObject]  WITH CHECK ADD  CONSTRAINT [FK_PermissionPolicyObjectPermissionsObject_PermissionPolicyTypePermissionObject_TypePermissionObjectID] FOREIGN KEY([TypePermissionObjectID])
REFERENCES [dbo].[PermissionPolicyTypePermissionObject] ([ID])
GO
ALTER TABLE [dbo].[PermissionPolicyObjectPermissionsObject] CHECK CONSTRAINT [FK_PermissionPolicyObjectPermissionsObject_PermissionPolicyTypePermissionObject_TypePermissionObjectID]
GO
ALTER TABLE [dbo].[PermissionPolicyRolePermissionPolicyUser]  WITH CHECK ADD  CONSTRAINT [FK_PermissionPolicyRolePermissionPolicyUser_PermissionPolicyRoleBase_RolesID] FOREIGN KEY([RolesID])
REFERENCES [dbo].[PermissionPolicyRoleBase] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PermissionPolicyRolePermissionPolicyUser] CHECK CONSTRAINT [FK_PermissionPolicyRolePermissionPolicyUser_PermissionPolicyRoleBase_RolesID]
GO
ALTER TABLE [dbo].[PermissionPolicyRolePermissionPolicyUser]  WITH CHECK ADD  CONSTRAINT [FK_PermissionPolicyRolePermissionPolicyUser_PermissionPolicyUser_UsersID] FOREIGN KEY([UsersID])
REFERENCES [dbo].[PermissionPolicyUser] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PermissionPolicyRolePermissionPolicyUser] CHECK CONSTRAINT [FK_PermissionPolicyRolePermissionPolicyUser_PermissionPolicyUser_UsersID]
GO
ALTER TABLE [dbo].[PermissionPolicyTypePermissionObject]  WITH CHECK ADD  CONSTRAINT [FK_PermissionPolicyTypePermissionObject_PermissionPolicyRoleBase_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[PermissionPolicyRoleBase] ([ID])
GO
ALTER TABLE [dbo].[PermissionPolicyTypePermissionObject] CHECK CONSTRAINT [FK_PermissionPolicyTypePermissionObject_PermissionPolicyRoleBase_RoleID]
GO
ALTER TABLE [dbo].[PermissionPolicyUserLoginInfo]  WITH CHECK ADD  CONSTRAINT [FK_PermissionPolicyUserLoginInfo_PermissionPolicyUser_UserForeignKey] FOREIGN KEY([UserForeignKey])
REFERENCES [dbo].[PermissionPolicyUser] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PermissionPolicyUserLoginInfo] CHECK CONSTRAINT [FK_PermissionPolicyUserLoginInfo_PermissionPolicyUser_UserForeignKey]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_PermissionPolicyUser_ManagerID] FOREIGN KEY([ManagerID])
REFERENCES [dbo].[PermissionPolicyUser] ([ID])
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_PermissionPolicyUser_ManagerID]
GO
ALTER TABLE [dbo].[ProjectTask]  WITH CHECK ADD  CONSTRAINT [FK_ProjectTask_PermissionPolicyUser_AssignedToID] FOREIGN KEY([AssignedToID])
REFERENCES [dbo].[PermissionPolicyUser] ([ID])
GO
ALTER TABLE [dbo].[ProjectTask] CHECK CONSTRAINT [FK_ProjectTask_PermissionPolicyUser_AssignedToID]
GO
ALTER TABLE [dbo].[ProjectTask]  WITH CHECK ADD  CONSTRAINT [FK_ProjectTask_Projects_ProjectID] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Projects] ([ID])
GO
ALTER TABLE [dbo].[ProjectTask] CHECK CONSTRAINT [FK_ProjectTask_Projects_ProjectID]
GO
USE [master]
GO
ALTER DATABASE [DXApplication1] SET  READ_WRITE 
GO
