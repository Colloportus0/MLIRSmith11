module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64) -> !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v2_0", "v1_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.insertvalue %arg8, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.insertvalue %arg9, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.insertvalue %arg10, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %arg11, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.mlir.constant(2147483647 : i32) : i32
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.null : !llvm.ptr<i32>
    %21 = llvm.getelementptr %20[%15] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %22 = llvm.ptrtoint %21 : !llvm.ptr<i32> to i64
    %23 = llvm.mlir.constant(16 : index) : i64
    %24 = llvm.add %22, %23  : i64
    %25 = llvm.call @malloc(%24) : (i64) -> !llvm.ptr<i8>
    %26 = llvm.bitcast %25 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %27 = llvm.ptrtoint %26 : !llvm.ptr<i32> to i64
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.sub %23, %28  : i64
    %30 = llvm.add %27, %29  : i64
    %31 = llvm.urem %30, %23  : i64
    %32 = llvm.sub %30, %31  : i64
    %33 = llvm.inttoptr %32 : i64 to !llvm.ptr<i32>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %35 = llvm.insertvalue %26, %34[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.insertvalue %33, %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(0 : index) : i64
    %38 = llvm.insertvalue %37, %36[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %15, %38[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %16, %39[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %17, %40[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %18, %41[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %16, %42[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %17, %43[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %18, %44[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.insertvalue %19, %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.mlir.constant(0 : index) : i64
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%47 : i64)
  ^bb1(%50: i64):  // 2 preds: ^bb0, ^bb11
    %51 = llvm.icmp "slt" %50, %48 : i64
    llvm.cond_br %51, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%52 : i64)
  ^bb3(%55: i64):  // 2 preds: ^bb2, ^bb10
    %56 = llvm.icmp "slt" %55, %53 : i64
    llvm.cond_br %56, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %57 = llvm.mlir.constant(0 : index) : i64
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%57 : i64)
  ^bb5(%60: i64):  // 2 preds: ^bb4, ^bb9
    %61 = llvm.icmp "slt" %60, %58 : i64
    llvm.cond_br %61, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%62 : i64)
  ^bb7(%65: i64):  // 2 preds: ^bb6, ^bb8
    %66 = llvm.icmp "slt" %65, %63 : i64
    llvm.cond_br %66, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %67 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.add %50, %55  : i64
    %69 = llvm.add %68, %60  : i64
    %70 = llvm.add %69, %65  : i64
    %71 = llvm.getelementptr %67[%70] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %14, %71 : !llvm.ptr<i32>
    %72 = llvm.add %65, %64  : i64
    llvm.br ^bb7(%72 : i64)
  ^bb9:  // pred: ^bb7
    %73 = llvm.add %60, %59  : i64
    llvm.br ^bb5(%73 : i64)
  ^bb10:  // pred: ^bb5
    %74 = llvm.add %55, %54  : i64
    llvm.br ^bb3(%74 : i64)
  ^bb11:  // pred: ^bb3
    %75 = llvm.add %50, %49  : i64
    llvm.br ^bb1(%75 : i64)
  ^bb12:  // pred: ^bb1
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%76 : i64)
  ^bb13(%79: i64):  // 2 preds: ^bb12, ^bb26
    %80 = llvm.icmp "slt" %79, %77 : i64
    llvm.cond_br %80, ^bb14, ^bb27
  ^bb14:  // pred: ^bb13
    %81 = llvm.mlir.constant(0 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%81 : i64)
  ^bb15(%84: i64):  // 2 preds: ^bb14, ^bb25
    %85 = llvm.icmp "slt" %84, %82 : i64
    llvm.cond_br %85, ^bb16, ^bb26
  ^bb16:  // pred: ^bb15
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%86 : i64)
  ^bb17(%89: i64):  // 2 preds: ^bb16, ^bb24
    %90 = llvm.icmp "slt" %89, %87 : i64
    llvm.cond_br %90, ^bb18, ^bb25
  ^bb18:  // pred: ^bb17
    %91 = llvm.mlir.constant(0 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%91 : i64)
  ^bb19(%94: i64):  // 2 preds: ^bb18, ^bb23
    %95 = llvm.icmp "slt" %94, %92 : i64
    llvm.cond_br %95, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %96 = llvm.mlir.constant(0 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%96 : i64)
  ^bb21(%99: i64):  // 2 preds: ^bb20, ^bb22
    %100 = llvm.icmp "slt" %99, %97 : i64
    llvm.cond_br %100, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %101 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %102 = llvm.add %79, %84  : i64
    %103 = llvm.add %102, %89  : i64
    %104 = llvm.add %103, %94  : i64
    %105 = llvm.add %104, %99  : i64
    %106 = llvm.getelementptr %101[%105] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %107 = llvm.load %106 : !llvm.ptr<i32>
    %108 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.add %79, %84  : i64
    %110 = llvm.add %109, %89  : i64
    %111 = llvm.add %110, %99  : i64
    %112 = llvm.getelementptr %108[%111] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %113 = llvm.load %112 : !llvm.ptr<i32>
    %114 = llvm.icmp "slt" %113, %107 : i32
    %115 = llvm.select %114, %113, %107 : i1, i32
    %116 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.add %79, %84  : i64
    %118 = llvm.add %117, %89  : i64
    %119 = llvm.add %118, %99  : i64
    %120 = llvm.getelementptr %116[%119] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %115, %120 : !llvm.ptr<i32>
    %121 = llvm.add %99, %98  : i64
    llvm.br ^bb21(%121 : i64)
  ^bb23:  // pred: ^bb21
    %122 = llvm.add %94, %93  : i64
    llvm.br ^bb19(%122 : i64)
  ^bb24:  // pred: ^bb19
    %123 = llvm.add %89, %88  : i64
    llvm.br ^bb17(%123 : i64)
  ^bb25:  // pred: ^bb17
    %124 = llvm.add %84, %83  : i64
    llvm.br ^bb15(%124 : i64)
  ^bb26:  // pred: ^bb15
    %125 = llvm.add %79, %78  : i64
    llvm.br ^bb13(%125 : i64)
  ^bb27:  // pred: ^bb13
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.null : !llvm.ptr<f32>
    %132 = llvm.getelementptr %131[%126] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %133 = llvm.ptrtoint %132 : !llvm.ptr<f32> to i64
    %134 = llvm.mlir.constant(16 : index) : i64
    %135 = llvm.add %133, %134  : i64
    %136 = llvm.call @malloc(%135) : (i64) -> !llvm.ptr<i8>
    %137 = llvm.bitcast %136 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %138 = llvm.ptrtoint %137 : !llvm.ptr<f32> to i64
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.sub %134, %139  : i64
    %141 = llvm.add %138, %140  : i64
    %142 = llvm.urem %141, %134  : i64
    %143 = llvm.sub %141, %142  : i64
    %144 = llvm.inttoptr %143 : i64 to !llvm.ptr<f32>
    %145 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %146 = llvm.insertvalue %137, %145[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.insertvalue %144, %146[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.mlir.constant(0 : index) : i64
    %149 = llvm.insertvalue %148, %147[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.insertvalue %126, %149[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.insertvalue %127, %150[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.insertvalue %128, %151[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.insertvalue %129, %152[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.insertvalue %127, %153[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.insertvalue %128, %154[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.insertvalue %129, %155[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.insertvalue %130, %156[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.mlir.constant(0 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%158 : i64)
  ^bb28(%161: i64):  // 2 preds: ^bb27, ^bb38
    %162 = llvm.icmp "slt" %161, %159 : i64
    llvm.cond_br %162, ^bb29, ^bb39
  ^bb29:  // pred: ^bb28
    %163 = llvm.mlir.constant(0 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%163 : i64)
  ^bb30(%166: i64):  // 2 preds: ^bb29, ^bb37
    %167 = llvm.icmp "slt" %166, %164 : i64
    llvm.cond_br %167, ^bb31, ^bb38
  ^bb31:  // pred: ^bb30
    %168 = llvm.mlir.constant(0 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%168 : i64)
  ^bb32(%171: i64):  // 2 preds: ^bb31, ^bb36
    %172 = llvm.icmp "slt" %171, %169 : i64
    llvm.cond_br %172, ^bb33, ^bb37
  ^bb33:  // pred: ^bb32
    %173 = llvm.mlir.constant(0 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%173 : i64)
  ^bb34(%176: i64):  // 2 preds: ^bb33, ^bb35
    %177 = llvm.icmp "slt" %176, %174 : i64
    llvm.cond_br %177, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %178 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.add %161, %166  : i64
    %180 = llvm.add %179, %171  : i64
    %181 = llvm.add %180, %176  : i64
    %182 = llvm.getelementptr %178[%181] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %183 = llvm.load %182 : !llvm.ptr<i32>
    %184 = llvm.sitofp %183 : i32 to f32
    %185 = llvm.extractvalue %157[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.add %161, %166  : i64
    %187 = llvm.add %186, %171  : i64
    %188 = llvm.add %187, %176  : i64
    %189 = llvm.getelementptr %185[%188] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %184, %189 : !llvm.ptr<f32>
    %190 = llvm.add %176, %175  : i64
    llvm.br ^bb34(%190 : i64)
  ^bb36:  // pred: ^bb34
    %191 = llvm.add %171, %170  : i64
    llvm.br ^bb32(%191 : i64)
  ^bb37:  // pred: ^bb32
    %192 = llvm.add %166, %165  : i64
    llvm.br ^bb30(%192 : i64)
  ^bb38:  // pred: ^bb30
    %193 = llvm.add %161, %160  : i64
    llvm.br ^bb28(%193 : i64)
  ^bb39:  // pred: ^bb28
    %194 = llvm.mlir.constant(1 : index) : i64
    %195 = llvm.mlir.constant(1 : index) : i64
    %196 = llvm.mlir.constant(1 : index) : i64
    %197 = llvm.mlir.constant(2 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.mlir.constant(2 : index) : i64
    %200 = llvm.mlir.constant(2 : index) : i64
    %201 = llvm.mlir.constant(2 : index) : i64
    %202 = llvm.mlir.null : !llvm.ptr<i32>
    %203 = llvm.getelementptr %202[%201] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %204 = llvm.ptrtoint %203 : !llvm.ptr<i32> to i64
    %205 = llvm.mlir.constant(16 : index) : i64
    %206 = llvm.add %204, %205  : i64
    %207 = llvm.call @malloc(%206) : (i64) -> !llvm.ptr<i8>
    %208 = llvm.bitcast %207 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %209 = llvm.ptrtoint %208 : !llvm.ptr<i32> to i64
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.sub %205, %210  : i64
    %212 = llvm.add %209, %211  : i64
    %213 = llvm.urem %212, %205  : i64
    %214 = llvm.sub %212, %213  : i64
    %215 = llvm.inttoptr %214 : i64 to !llvm.ptr<i32>
    %216 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %217 = llvm.insertvalue %208, %216[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.insertvalue %215, %217[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.insertvalue %219, %218[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.insertvalue %194, %220[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.insertvalue %195, %221[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.insertvalue %196, %222[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.insertvalue %197, %223[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.insertvalue %200, %224[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.insertvalue %199, %225[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.insertvalue %197, %226[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.insertvalue %198, %227[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.mlir.constant(0 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%229 : i64)
  ^bb40(%232: i64):  // 2 preds: ^bb39, ^bb50
    %233 = llvm.icmp "slt" %232, %230 : i64
    llvm.cond_br %233, ^bb41, ^bb51
  ^bb41:  // pred: ^bb40
    %234 = llvm.mlir.constant(0 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%234 : i64)
  ^bb42(%237: i64):  // 2 preds: ^bb41, ^bb49
    %238 = llvm.icmp "slt" %237, %235 : i64
    llvm.cond_br %238, ^bb43, ^bb50
  ^bb43:  // pred: ^bb42
    %239 = llvm.mlir.constant(0 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%239 : i64)
  ^bb44(%242: i64):  // 2 preds: ^bb43, ^bb48
    %243 = llvm.icmp "slt" %242, %240 : i64
    llvm.cond_br %243, ^bb45, ^bb49
  ^bb45:  // pred: ^bb44
    %244 = llvm.mlir.constant(0 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%244 : i64)
  ^bb46(%247: i64):  // 2 preds: ^bb45, ^bb47
    %248 = llvm.icmp "slt" %247, %245 : i64
    llvm.cond_br %248, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %249 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %250 = llvm.add %232, %237  : i64
    %251 = llvm.add %250, %242  : i64
    %252 = llvm.add %251, %247  : i64
    %253 = llvm.getelementptr %249[%252] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %254 = llvm.load %253 : !llvm.ptr<i32>
    %255 = llvm.extractvalue %228[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %256 = llvm.mlir.constant(2 : index) : i64
    %257 = llvm.mul %232, %256  : i64
    %258 = llvm.mlir.constant(2 : index) : i64
    %259 = llvm.mul %237, %258  : i64
    %260 = llvm.add %257, %259  : i64
    %261 = llvm.mlir.constant(2 : index) : i64
    %262 = llvm.mul %242, %261  : i64
    %263 = llvm.add %260, %262  : i64
    %264 = llvm.add %263, %247  : i64
    %265 = llvm.getelementptr %255[%264] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %254, %265 : !llvm.ptr<i32>
    %266 = llvm.add %247, %246  : i64
    llvm.br ^bb46(%266 : i64)
  ^bb48:  // pred: ^bb46
    %267 = llvm.add %242, %241  : i64
    llvm.br ^bb44(%267 : i64)
  ^bb49:  // pred: ^bb44
    %268 = llvm.add %237, %236  : i64
    llvm.br ^bb42(%268 : i64)
  ^bb50:  // pred: ^bb42
    %269 = llvm.add %232, %231  : i64
    llvm.br ^bb40(%269 : i64)
  ^bb51:  // pred: ^bb40
    %270 = llvm.mlir.constant(0 : index) : i64
    %271 = llvm.mlir.constant(1 : index) : i64
    %272 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%270 : i64)
  ^bb52(%273: i64):  // 2 preds: ^bb51, ^bb62
    %274 = llvm.icmp "slt" %273, %271 : i64
    llvm.cond_br %274, ^bb53, ^bb63
  ^bb53:  // pred: ^bb52
    %275 = llvm.mlir.constant(0 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    %277 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%275 : i64)
  ^bb54(%278: i64):  // 2 preds: ^bb53, ^bb61
    %279 = llvm.icmp "slt" %278, %276 : i64
    llvm.cond_br %279, ^bb55, ^bb62
  ^bb55:  // pred: ^bb54
    %280 = llvm.mlir.constant(0 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%280 : i64)
  ^bb56(%283: i64):  // 2 preds: ^bb55, ^bb60
    %284 = llvm.icmp "slt" %283, %281 : i64
    llvm.cond_br %284, ^bb57, ^bb61
  ^bb57:  // pred: ^bb56
    %285 = llvm.mlir.constant(0 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%285 : i64)
  ^bb58(%288: i64):  // 2 preds: ^bb57, ^bb59
    %289 = llvm.icmp "slt" %288, %286 : i64
    llvm.cond_br %289, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %290 = llvm.mlir.constant(1 : index) : i64
    %291 = llvm.add %288, %290  : i64
    %292 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %293 = llvm.add %273, %278  : i64
    %294 = llvm.add %293, %283  : i64
    %295 = llvm.add %294, %288  : i64
    %296 = llvm.getelementptr %292[%295] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %297 = llvm.load %296 : !llvm.ptr<i32>
    %298 = llvm.extractvalue %228[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.mlir.constant(2 : index) : i64
    %300 = llvm.mul %273, %299  : i64
    %301 = llvm.mlir.constant(2 : index) : i64
    %302 = llvm.mul %278, %301  : i64
    %303 = llvm.add %300, %302  : i64
    %304 = llvm.mlir.constant(2 : index) : i64
    %305 = llvm.mul %283, %304  : i64
    %306 = llvm.add %303, %305  : i64
    %307 = llvm.add %306, %291  : i64
    %308 = llvm.getelementptr %298[%307] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %297, %308 : !llvm.ptr<i32>
    %309 = llvm.add %288, %287  : i64
    llvm.br ^bb58(%309 : i64)
  ^bb60:  // pred: ^bb58
    %310 = llvm.add %283, %282  : i64
    llvm.br ^bb56(%310 : i64)
  ^bb61:  // pred: ^bb56
    %311 = llvm.add %278, %277  : i64
    llvm.br ^bb54(%311 : i64)
  ^bb62:  // pred: ^bb54
    %312 = llvm.add %273, %272  : i64
    llvm.br ^bb52(%312 : i64)
  ^bb63:  // pred: ^bb52
    %313 = llvm.mlir.constant(1 : index) : i64
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    %318 = llvm.mlir.null : !llvm.ptr<i32>
    %319 = llvm.getelementptr %318[%313] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %320 = llvm.ptrtoint %319 : !llvm.ptr<i32> to i64
    %321 = llvm.mlir.constant(16 : index) : i64
    %322 = llvm.add %320, %321  : i64
    %323 = llvm.call @malloc(%322) : (i64) -> !llvm.ptr<i8>
    %324 = llvm.bitcast %323 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %325 = llvm.ptrtoint %324 : !llvm.ptr<i32> to i64
    %326 = llvm.mlir.constant(1 : index) : i64
    %327 = llvm.sub %321, %326  : i64
    %328 = llvm.add %325, %327  : i64
    %329 = llvm.urem %328, %321  : i64
    %330 = llvm.sub %328, %329  : i64
    %331 = llvm.inttoptr %330 : i64 to !llvm.ptr<i32>
    %332 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %333 = llvm.insertvalue %324, %332[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %334 = llvm.insertvalue %331, %333[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %335 = llvm.mlir.constant(0 : index) : i64
    %336 = llvm.insertvalue %335, %334[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %337 = llvm.insertvalue %313, %336[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %338 = llvm.insertvalue %314, %337[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %339 = llvm.insertvalue %315, %338[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.insertvalue %316, %339[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.insertvalue %314, %340[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %342 = llvm.insertvalue %315, %341[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %343 = llvm.insertvalue %316, %342[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %344 = llvm.insertvalue %317, %343[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %345 = llvm.mlir.constant(0 : index) : i64
    %346 = llvm.mlir.constant(1 : index) : i64
    %347 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%345 : i64)
  ^bb64(%348: i64):  // 2 preds: ^bb63, ^bb74
    %349 = llvm.icmp "slt" %348, %346 : i64
    llvm.cond_br %349, ^bb65, ^bb75
  ^bb65:  // pred: ^bb64
    %350 = llvm.mlir.constant(0 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%350 : i64)
  ^bb66(%353: i64):  // 2 preds: ^bb65, ^bb73
    %354 = llvm.icmp "slt" %353, %351 : i64
    llvm.cond_br %354, ^bb67, ^bb74
  ^bb67:  // pred: ^bb66
    %355 = llvm.mlir.constant(0 : index) : i64
    %356 = llvm.mlir.constant(1 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%355 : i64)
  ^bb68(%358: i64):  // 2 preds: ^bb67, ^bb72
    %359 = llvm.icmp "slt" %358, %356 : i64
    llvm.cond_br %359, ^bb69, ^bb73
  ^bb69:  // pred: ^bb68
    %360 = llvm.mlir.constant(0 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%360 : i64)
  ^bb70(%363: i64):  // 2 preds: ^bb69, ^bb71
    %364 = llvm.icmp "slt" %363, %361 : i64
    llvm.cond_br %364, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %365 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %366 = llvm.add %348, %353  : i64
    %367 = llvm.add %366, %358  : i64
    %368 = llvm.add %367, %363  : i64
    %369 = llvm.getelementptr %365[%368] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %370 = llvm.load %369 : !llvm.ptr<i32>
    %371 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %372 = llvm.add %348, %353  : i64
    %373 = llvm.add %372, %358  : i64
    %374 = llvm.add %373, %363  : i64
    %375 = llvm.getelementptr %371[%374] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %376 = llvm.load %375 : !llvm.ptr<i32>
    %377 = llvm.icmp "sgt" %370, %376 : i32
    %378 = llvm.select %377, %370, %376 : i1, i32
    %379 = llvm.extractvalue %344[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.add %348, %353  : i64
    %381 = llvm.add %380, %358  : i64
    %382 = llvm.add %381, %363  : i64
    %383 = llvm.getelementptr %379[%382] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %378, %383 : !llvm.ptr<i32>
    %384 = llvm.add %363, %362  : i64
    llvm.br ^bb70(%384 : i64)
  ^bb72:  // pred: ^bb70
    %385 = llvm.add %358, %357  : i64
    llvm.br ^bb68(%385 : i64)
  ^bb73:  // pred: ^bb68
    %386 = llvm.add %353, %352  : i64
    llvm.br ^bb66(%386 : i64)
  ^bb74:  // pred: ^bb66
    %387 = llvm.add %348, %347  : i64
    llvm.br ^bb64(%387 : i64)
  ^bb75:  // pred: ^bb64
    %388 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %389 = llvm.insertvalue %157, %388[0] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %390 = llvm.insertvalue %228, %389[1] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %391 = llvm.insertvalue %344, %390[2] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %391 : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v2_0", "v1_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.extractvalue %0[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.extractvalue %0[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %14, %arg0 : !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %44 = llvm.mlir.constant(4 : i64) : i64
    %45 = llvm.getelementptr %14[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %46 = llvm.load %45 : !llvm.ptr<i64>
    %47 = llvm.insertvalue %46, %43[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.getelementptr %15[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %49 = llvm.load %48 : !llvm.ptr<i64>
    %50 = llvm.insertvalue %49, %47[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %50, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %51 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %52 = llvm.extractvalue %51[0] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %53 = llvm.extractvalue %51[1] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %54 = llvm.extractvalue %51[2] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %55 = llvm.mlir.constant(3 : i64) : i64
    %56 = llvm.mlir.constant(24 : i64) : i64
    %57 = llvm.call @malloc(%56) : (i64) -> !llvm.ptr<i8>
    %58 = llvm.bitcast %57 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %59 = llvm.mlir.constant(4 : i64) : i64
    %60 = llvm.call @omTensorCreateUntyped(%59) : (i64) -> !llvm.ptr<i8>
    %61 = llvm.mlir.constant(1 : i64) : i64
    %62 = llvm.extractvalue %52[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.bitcast %62 : !llvm.ptr<f32> to !llvm.ptr<i8>
    %64 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.bitcast %64 : !llvm.ptr<f32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%60, %61, %63, %65) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %66 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @omTensorSetDataType(%60, %66) : (!llvm.ptr<i8>, i64) -> ()
    %67 = llvm.call @omTensorGetShape(%60) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %68 = llvm.call @omTensorGetStrides(%60) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %69 = llvm.mlir.constant(0 : i64) : i64
    %70 = llvm.extractvalue %52[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %67[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.extractvalue %52[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %68[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.mlir.constant(1 : i64) : i64
    %75 = llvm.extractvalue %52[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %67[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.extractvalue %52[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %68[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.mlir.constant(2 : i64) : i64
    %80 = llvm.extractvalue %52[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %67[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.extractvalue %52[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.getelementptr %68[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.mlir.constant(3 : i64) : i64
    %85 = llvm.extractvalue %52[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.getelementptr %67[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %85, %86 : !llvm.ptr<i64>
    %87 = llvm.extractvalue %52[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.getelementptr %68[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %87, %88 : !llvm.ptr<i64>
    %89 = llvm.mlir.constant(0 : i64) : i64
    %90 = llvm.getelementptr %58[%89] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %60, %90 : !llvm.ptr<ptr<i8>>
    %91 = llvm.mlir.constant(4 : i64) : i64
    %92 = llvm.call @omTensorCreateUntyped(%91) : (i64) -> !llvm.ptr<i8>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.extractvalue %53[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.bitcast %94 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %96 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.bitcast %96 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%92, %93, %95, %97) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %98 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%92, %98) : (!llvm.ptr<i8>, i64) -> ()
    %99 = llvm.call @omTensorGetShape(%92) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %100 = llvm.call @omTensorGetStrides(%92) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %101 = llvm.mlir.constant(0 : i64) : i64
    %102 = llvm.extractvalue %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %99[%101] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.extractvalue %53[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %100[%101] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.mlir.constant(1 : i64) : i64
    %107 = llvm.extractvalue %53[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %99[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.extractvalue %53[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %100[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.mlir.constant(2 : i64) : i64
    %112 = llvm.extractvalue %53[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %99[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.extractvalue %53[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.getelementptr %100[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.mlir.constant(3 : i64) : i64
    %117 = llvm.extractvalue %53[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.getelementptr %99[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.extractvalue %53[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.getelementptr %100[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.mlir.constant(1 : i64) : i64
    %122 = llvm.getelementptr %58[%121] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %92, %122 : !llvm.ptr<ptr<i8>>
    %123 = llvm.mlir.constant(4 : i64) : i64
    %124 = llvm.call @omTensorCreateUntyped(%123) : (i64) -> !llvm.ptr<i8>
    %125 = llvm.mlir.constant(1 : i64) : i64
    %126 = llvm.extractvalue %54[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.bitcast %126 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %128 = llvm.extractvalue %54[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.bitcast %128 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%124, %125, %127, %129) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %130 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%124, %130) : (!llvm.ptr<i8>, i64) -> ()
    %131 = llvm.call @omTensorGetShape(%124) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %132 = llvm.call @omTensorGetStrides(%124) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %133 = llvm.mlir.constant(0 : i64) : i64
    %134 = llvm.extractvalue %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.getelementptr %131[%133] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.extractvalue %54[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.getelementptr %132[%133] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %136, %137 : !llvm.ptr<i64>
    %138 = llvm.mlir.constant(1 : i64) : i64
    %139 = llvm.extractvalue %54[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.getelementptr %131[%138] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.extractvalue %54[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.getelementptr %132[%138] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %141, %142 : !llvm.ptr<i64>
    %143 = llvm.mlir.constant(2 : i64) : i64
    %144 = llvm.extractvalue %54[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.getelementptr %131[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.extractvalue %54[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.getelementptr %132[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %146, %147 : !llvm.ptr<i64>
    %148 = llvm.mlir.constant(3 : i64) : i64
    %149 = llvm.extractvalue %54[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.getelementptr %131[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %149, %150 : !llvm.ptr<i64>
    %151 = llvm.extractvalue %54[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.getelementptr %132[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %151, %152 : !llvm.ptr<i64>
    %153 = llvm.mlir.constant(2 : i64) : i64
    %154 = llvm.getelementptr %58[%153] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %124, %154 : !llvm.ptr<ptr<i8>>
    %155 = llvm.call @omTensorListCreate(%58, %55, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %155 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<76 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<76 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<211 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<211 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

