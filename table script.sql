USE [Meatnet_Live]
GO

/****** Object:  Table [dbo].[Master_UserVsForgotPasswordOTPs]    Script Date: 27-05-2026 05:13:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Master_UserVsForgotPasswordOTPs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[login_name] [varchar](150) NULL,
	[IsActive] [varchar](10) NULL,
	[OTP] [varchar](50) NULL,
	[EmailID] [varchar](150) NULL,
	[MobileNo] [varchar](50) NULL,
	[OTPSentOn] [datetime] NULL,
	[OTPHitCount] [int] NULL,
	[OTPVerifiedOn] [datetime] NULL,
	[OTPVerifiedBy] [varchar](50) NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Master_UserVsForgotPasswordOTPs] ADD  CONSTRAINT [DF_Master_UserVsForgotPasswordOTPs_IsActive]  DEFAULT ('N') FOR [IsActive]
GO

ALTER TABLE [dbo].[Master_UserVsForgotPasswordOTPs] ADD  CONSTRAINT [DF_Master_UserVsForgotPasswordOTPs_OTPHitCount]  DEFAULT ((0)) FOR [OTPHitCount]
GO


