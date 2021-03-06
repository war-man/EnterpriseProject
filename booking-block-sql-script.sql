USE [master]
GO
/****** Object:  Database [Booking-Block]    Script Date: 15/05/2016 10:54:19 ******/
CREATE DATABASE [Booking-Block]
GO
ALTER DATABASE [Booking-Block] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Booking-Block].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Booking-Block] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Booking-Block] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Booking-Block] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Booking-Block] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Booking-Block] SET ARITHABORT OFF 
GO
ALTER DATABASE [Booking-Block] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Booking-Block] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Booking-Block] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Booking-Block] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Booking-Block] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Booking-Block] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Booking-Block] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Booking-Block] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Booking-Block] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Booking-Block] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Booking-Block] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Booking-Block] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Booking-Block] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Booking-Block] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [Booking-Block] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Booking-Block] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Booking-Block] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Booking-Block] SET RECOVERY FULL 
GO
ALTER DATABASE [Booking-Block] SET  MULTI_USER 
GO
ALTER DATABASE [Booking-Block] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Booking-Block] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Booking-Block] SET QUERY_STORE = OFF
GO
USE [Booking-Block]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Booking-Block]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 15/05/2016 10:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 15/05/2016 10:54:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 15/05/2016 10:54:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 15/05/2016 10:54:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 15/05/2016 10:54:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 15/05/2016 10:54:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[Postcode] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Location] [geography] NULL,
	[Gender] [int] NOT NULL,
	[RegistrationDate] [datetime] NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Modified] [datetime] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[BookingLogs]    Script Date: 15/05/2016 10:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingLogs](
	[Id] [uniqueidentifier] NOT NULL,
	[BookingId] [uniqueidentifier] NOT NULL,
	[EntryDateTime] [datetime] NOT NULL,
	[Entry] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.BookingLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[Bookings]    Script Date: 15/05/2016 10:54:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookings](
	[Id] [uniqueidentifier] NOT NULL,
	[ServiceId] [uniqueidentifier] NOT NULL,
	[CustomerId] [nvarchar](128) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Duration] [time](7) NOT NULL,
	[TotalCost] [decimal](18, 2) NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[Confirmed] [bit] NOT NULL,
	[Cancelled] [bit] NOT NULL,
	[Amended] [bit] NOT NULL,
	[Attended] [bit] NOT NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[Paid] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Bookings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[Businesses]    Script Date: 15/05/2016 10:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Businesses](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Postcode] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[FaxNumber] [nvarchar](max) NULL,
	[Website] [nvarchar](max) NULL,
	[Facebook] [nvarchar](max) NULL,
	[LinkedIn] [nvarchar](max) NULL,
	[GooglePlus] [nvarchar](max) NULL,
	[RegistrationDate] [datetime] NOT NULL,
	[LogoUrl] [nvarchar](max) NULL,
	[Location] [geography] NOT NULL,
	[BusinessTypeId] [uniqueidentifier] NOT NULL,
	[EmailAddress] [nvarchar](max) NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Businesses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[BusinessOpeningTimes]    Script Date: 15/05/2016 10:54:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessOpeningTimes](
	[BusinessId] [uniqueidentifier] NOT NULL,
	[DayOfWeek] [int] NOT NULL,
	[OpeningTime] [time](7) NOT NULL,
	[ClosingTime] [time](7) NOT NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.BusinessOpeningTimes] PRIMARY KEY CLUSTERED 
(
	[BusinessId] ASC,
	[DayOfWeek] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[BusinessTypes]    Script Date: 15/05/2016 10:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessTypes](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.BusinessTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[BusinessUsers]    Script Date: 15/05/2016 10:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessUsers](
	[BusinessId] [uniqueidentifier] NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[UserLevel] [int] NOT NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.BusinessUsers] PRIMARY KEY CLUSTERED 
(
	[BusinessId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 15/05/2016 10:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BusinessId] [uniqueidentifier] NOT NULL,
	[Rating] [int] NOT NULL,
	[Comments] [nvarchar](max) NOT NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Reviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[Services]    Script Date: 15/05/2016 10:54:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[Id] [uniqueidentifier] NOT NULL,
	[BusinessId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Cost] [decimal](18, 2) NOT NULL,
	[Duration] [time](7) NOT NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Services] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 15/05/2016 10:54:41 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 15/05/2016 10:54:41 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 15/05/2016 10:54:41 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 15/05/2016 10:54:41 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 15/05/2016 10:54:41 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 15/05/2016 10:54:41 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
/****** Object:  Index [IX_BookingId]    Script Date: 15/05/2016 10:54:41 ******/
CREATE NONCLUSTERED INDEX [IX_BookingId] ON [dbo].[BookingLogs]
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CustomerId]    Script Date: 15/05/2016 10:54:41 ******/
CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [dbo].[Bookings]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
/****** Object:  Index [IX_ServiceId]    Script Date: 15/05/2016 10:54:41 ******/
CREATE NONCLUSTERED INDEX [IX_ServiceId] ON [dbo].[Bookings]
(
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
/****** Object:  Index [IX_BusinessTypeId]    Script Date: 15/05/2016 10:54:41 ******/
CREATE NONCLUSTERED INDEX [IX_BusinessTypeId] ON [dbo].[Businesses]
(
	[BusinessTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
/****** Object:  Index [IX_BusinessId]    Script Date: 15/05/2016 10:54:41 ******/
CREATE NONCLUSTERED INDEX [IX_BusinessId] ON [dbo].[BusinessOpeningTimes]
(
	[BusinessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
/****** Object:  Index [IX_BusinessId]    Script Date: 15/05/2016 10:54:41 ******/
CREATE NONCLUSTERED INDEX [IX_BusinessId] ON [dbo].[BusinessUsers]
(
	[BusinessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 15/05/2016 10:54:41 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[BusinessUsers]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
/****** Object:  Index [IX_BusinessId]    Script Date: 15/05/2016 10:54:41 ******/
CREATE NONCLUSTERED INDEX [IX_BusinessId] ON [dbo].[Reviews]
(
	[BusinessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
/****** Object:  Index [IX_BusinessId]    Script Date: 15/05/2016 10:54:41 ******/
CREATE NONCLUSTERED INDEX [IX_BusinessId] ON [dbo].[Services]
(
	[BusinessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [Modified]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[BookingLogs] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Bookings] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Bookings] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [Created]
GO
ALTER TABLE [dbo].[Bookings] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [Modified]
GO
ALTER TABLE [dbo].[Bookings] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[Bookings] ADD  DEFAULT ((0)) FOR [Paid]
GO
ALTER TABLE [dbo].[Businesses] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Businesses] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [Created]
GO
ALTER TABLE [dbo].[Businesses] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [Modified]
GO
ALTER TABLE [dbo].[Businesses] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[BusinessOpeningTimes] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [Created]
GO
ALTER TABLE [dbo].[BusinessOpeningTimes] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [Modified]
GO
ALTER TABLE [dbo].[BusinessOpeningTimes] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[BusinessTypes] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[BusinessTypes] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [Created]
GO
ALTER TABLE [dbo].[BusinessTypes] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [Modified]
GO
ALTER TABLE [dbo].[BusinessTypes] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[BusinessUsers] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [Created]
GO
ALTER TABLE [dbo].[BusinessUsers] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [Modified]
GO
ALTER TABLE [dbo].[BusinessUsers] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[Reviews] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [Created]
GO
ALTER TABLE [dbo].[Reviews] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [Modified]
GO
ALTER TABLE [dbo].[Reviews] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[Services] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Services] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [Created]
GO
ALTER TABLE [dbo].[Services] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [Modified]
GO
ALTER TABLE [dbo].[Services] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BookingLogs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BookingLogs_dbo.Bookings_BookingId] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Bookings] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BookingLogs] CHECK CONSTRAINT [FK_dbo.BookingLogs_dbo.Bookings_BookingId]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Bookings_dbo.AspNetUsers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_dbo.Bookings_dbo.AspNetUsers_CustomerId]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Bookings_dbo.Services_ServiceId] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Services] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_dbo.Bookings_dbo.Services_ServiceId]
GO
ALTER TABLE [dbo].[Businesses]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Businesses_dbo.BusinessTypes_BusinessTypeId] FOREIGN KEY([BusinessTypeId])
REFERENCES [dbo].[BusinessTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Businesses] CHECK CONSTRAINT [FK_dbo.Businesses_dbo.BusinessTypes_BusinessTypeId]
GO
ALTER TABLE [dbo].[BusinessOpeningTimes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BusinessOpeningTimes_dbo.Businesses_BusinessId] FOREIGN KEY([BusinessId])
REFERENCES [dbo].[Businesses] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BusinessOpeningTimes] CHECK CONSTRAINT [FK_dbo.BusinessOpeningTimes_dbo.Businesses_BusinessId]
GO
ALTER TABLE [dbo].[BusinessUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BusinessUsers_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BusinessUsers] CHECK CONSTRAINT [FK_dbo.BusinessUsers_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BusinessUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BusinessUsers_dbo.Businesses_BusinessId] FOREIGN KEY([BusinessId])
REFERENCES [dbo].[Businesses] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BusinessUsers] CHECK CONSTRAINT [FK_dbo.BusinessUsers_dbo.Businesses_BusinessId]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Reviews_dbo.Businesses_BusinessId] FOREIGN KEY([BusinessId])
REFERENCES [dbo].[Businesses] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_dbo.Reviews_dbo.Businesses_BusinessId]
GO
ALTER TABLE [dbo].[Services]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Services_dbo.Businesses_BusinessId] FOREIGN KEY([BusinessId])
REFERENCES [dbo].[Businesses] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Services] CHECK CONSTRAINT [FK_dbo.Services_dbo.Businesses_BusinessId]
GO
USE [master]
GO
ALTER DATABASE [Booking-Block] SET  READ_WRITE 
GO
