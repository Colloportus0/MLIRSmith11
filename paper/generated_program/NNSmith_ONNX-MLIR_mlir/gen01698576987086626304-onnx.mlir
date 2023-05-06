module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f32\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %13 = llvm.mlir.constant(1 : index) : i64
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.null : !llvm.ptr<i32>
    %19 = llvm.getelementptr %18[%13] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %20 = llvm.ptrtoint %19 : !llvm.ptr<i32> to i64
    %21 = llvm.mlir.constant(16 : index) : i64
    %22 = llvm.add %20, %21  : i64
    %23 = llvm.call @malloc(%22) : (i64) -> !llvm.ptr<i8>
    %24 = llvm.bitcast %23 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %25 = llvm.ptrtoint %24 : !llvm.ptr<i32> to i64
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.sub %21, %26  : i64
    %28 = llvm.add %25, %27  : i64
    %29 = llvm.urem %28, %21  : i64
    %30 = llvm.sub %28, %29  : i64
    %31 = llvm.inttoptr %30 : i64 to !llvm.ptr<i32>
    %32 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %33 = llvm.insertvalue %24, %32[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.insertvalue %31, %33[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.mlir.constant(0 : index) : i64
    %36 = llvm.insertvalue %35, %34[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.insertvalue %13, %36[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %14, %37[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %15, %38[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %16, %39[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %14, %40[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %15, %41[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %16, %42[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %17, %43[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.mlir.constant(0 : index) : i64
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%45 : i64)
  ^bb1(%48: i64):  // 2 preds: ^bb0, ^bb11
    %49 = llvm.icmp "slt" %48, %46 : i64
    llvm.cond_br %49, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%50 : i64)
  ^bb3(%53: i64):  // 2 preds: ^bb2, ^bb10
    %54 = llvm.icmp "slt" %53, %51 : i64
    llvm.cond_br %54, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %55 = llvm.mlir.constant(0 : index) : i64
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%55 : i64)
  ^bb5(%58: i64):  // 2 preds: ^bb4, ^bb9
    %59 = llvm.icmp "slt" %58, %56 : i64
    llvm.cond_br %59, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %60 = llvm.mlir.constant(0 : index) : i64
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%60 : i64)
  ^bb7(%63: i64):  // 2 preds: ^bb6, ^bb8
    %64 = llvm.icmp "slt" %63, %61 : i64
    llvm.cond_br %64, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %65 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.add %48, %53  : i64
    %67 = llvm.add %66, %58  : i64
    %68 = llvm.add %67, %63  : i64
    %69 = llvm.getelementptr %65[%68] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %70 = llvm.load %69 : !llvm.ptr<i32>
    %71 = llvm.mlir.constant(false) : i1
    %72 = "llvm.intr.abs"(%70, %71) : (i32, i1) -> i32
    %73 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.add %48, %53  : i64
    %75 = llvm.add %74, %58  : i64
    %76 = llvm.add %75, %63  : i64
    %77 = llvm.getelementptr %73[%76] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %72, %77 : !llvm.ptr<i32>
    %78 = llvm.add %63, %62  : i64
    llvm.br ^bb7(%78 : i64)
  ^bb9:  // pred: ^bb7
    %79 = llvm.add %58, %57  : i64
    llvm.br ^bb5(%79 : i64)
  ^bb10:  // pred: ^bb5
    %80 = llvm.add %53, %52  : i64
    llvm.br ^bb3(%80 : i64)
  ^bb11:  // pred: ^bb3
    %81 = llvm.add %48, %47  : i64
    llvm.br ^bb1(%81 : i64)
  ^bb12:  // pred: ^bb1
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.null : !llvm.ptr<f32>
    %88 = llvm.getelementptr %87[%82] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %89 = llvm.ptrtoint %88 : !llvm.ptr<f32> to i64
    %90 = llvm.mlir.constant(16 : index) : i64
    %91 = llvm.add %89, %90  : i64
    %92 = llvm.call @malloc(%91) : (i64) -> !llvm.ptr<i8>
    %93 = llvm.bitcast %92 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %94 = llvm.ptrtoint %93 : !llvm.ptr<f32> to i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.sub %90, %95  : i64
    %97 = llvm.add %94, %96  : i64
    %98 = llvm.urem %97, %90  : i64
    %99 = llvm.sub %97, %98  : i64
    %100 = llvm.inttoptr %99 : i64 to !llvm.ptr<f32>
    %101 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %102 = llvm.insertvalue %93, %101[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.insertvalue %100, %102[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.mlir.constant(0 : index) : i64
    %105 = llvm.insertvalue %104, %103[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.insertvalue %82, %105[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.insertvalue %83, %106[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.insertvalue %84, %107[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.insertvalue %85, %108[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %83, %109[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %84, %110[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %85, %111[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.insertvalue %86, %112[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.mlir.constant(0 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%114 : i64)
  ^bb13(%117: i64):  // 2 preds: ^bb12, ^bb23
    %118 = llvm.icmp "slt" %117, %115 : i64
    llvm.cond_br %118, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %119 = llvm.mlir.constant(0 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%119 : i64)
  ^bb15(%122: i64):  // 2 preds: ^bb14, ^bb22
    %123 = llvm.icmp "slt" %122, %120 : i64
    llvm.cond_br %123, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %124 = llvm.mlir.constant(0 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%124 : i64)
  ^bb17(%127: i64):  // 2 preds: ^bb16, ^bb21
    %128 = llvm.icmp "slt" %127, %125 : i64
    llvm.cond_br %128, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %129 = llvm.mlir.constant(0 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%129 : i64)
  ^bb19(%132: i64):  // 2 preds: ^bb18, ^bb20
    %133 = llvm.icmp "slt" %132, %130 : i64
    llvm.cond_br %133, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %134 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.add %117, %122  : i64
    %136 = llvm.add %135, %127  : i64
    %137 = llvm.add %136, %132  : i64
    %138 = llvm.getelementptr %134[%137] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %139 = llvm.load %138 : !llvm.ptr<i32>
    %140 = llvm.sitofp %139 : i32 to f32
    %141 = llvm.extractvalue %113[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.add %117, %122  : i64
    %143 = llvm.add %142, %127  : i64
    %144 = llvm.add %143, %132  : i64
    %145 = llvm.getelementptr %141[%144] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %140, %145 : !llvm.ptr<f32>
    %146 = llvm.add %132, %131  : i64
    llvm.br ^bb19(%146 : i64)
  ^bb21:  // pred: ^bb19
    %147 = llvm.add %127, %126  : i64
    llvm.br ^bb17(%147 : i64)
  ^bb22:  // pred: ^bb17
    %148 = llvm.add %122, %121  : i64
    llvm.br ^bb15(%148 : i64)
  ^bb23:  // pred: ^bb15
    %149 = llvm.add %117, %116  : i64
    llvm.br ^bb13(%149 : i64)
  ^bb24:  // pred: ^bb13
    %150 = llvm.mlir.constant(1 : index) : i64
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.mlir.null : !llvm.ptr<f32>
    %155 = llvm.getelementptr %154[%150] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %156 = llvm.ptrtoint %155 : !llvm.ptr<f32> to i64
    %157 = llvm.mlir.constant(16 : index) : i64
    %158 = llvm.add %156, %157  : i64
    %159 = llvm.call @malloc(%158) : (i64) -> !llvm.ptr<i8>
    %160 = llvm.bitcast %159 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %161 = llvm.ptrtoint %160 : !llvm.ptr<f32> to i64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.sub %157, %162  : i64
    %164 = llvm.add %161, %163  : i64
    %165 = llvm.urem %164, %157  : i64
    %166 = llvm.sub %164, %165  : i64
    %167 = llvm.inttoptr %166 : i64 to !llvm.ptr<f32>
    %168 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>
    %169 = llvm.insertvalue %160, %168[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %170 = llvm.insertvalue %167, %169[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %171 = llvm.mlir.constant(0 : index) : i64
    %172 = llvm.insertvalue %171, %170[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %173 = llvm.insertvalue %150, %172[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %174 = llvm.insertvalue %151, %173[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %175 = llvm.insertvalue %152, %174[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %176 = llvm.insertvalue %151, %175[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %177 = llvm.insertvalue %152, %176[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %178 = llvm.insertvalue %153, %177[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %179 = llvm.mlir.constant(0 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%179 : i64)
  ^bb25(%182: i64):  // 2 preds: ^bb24, ^bb32
    %183 = llvm.icmp "slt" %182, %180 : i64
    llvm.cond_br %183, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    %184 = llvm.mlir.constant(0 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%184 : i64)
  ^bb27(%187: i64):  // 2 preds: ^bb26, ^bb31
    %188 = llvm.icmp "slt" %187, %185 : i64
    llvm.cond_br %188, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    %189 = llvm.mlir.constant(0 : index) : i64
    %190 = llvm.mlir.constant(1 : index) : i64
    %191 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%189 : i64)
  ^bb29(%192: i64):  // 2 preds: ^bb28, ^bb30
    %193 = llvm.icmp "slt" %192, %190 : i64
    llvm.cond_br %193, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %194 = llvm.extractvalue %178[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %195 = llvm.add %182, %187  : i64
    %196 = llvm.add %195, %192  : i64
    %197 = llvm.getelementptr %194[%196] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %12, %197 : !llvm.ptr<f32>
    %198 = llvm.add %192, %191  : i64
    llvm.br ^bb29(%198 : i64)
  ^bb31:  // pred: ^bb29
    %199 = llvm.add %187, %186  : i64
    llvm.br ^bb27(%199 : i64)
  ^bb32:  // pred: ^bb27
    %200 = llvm.add %182, %181  : i64
    llvm.br ^bb25(%200 : i64)
  ^bb33:  // pred: ^bb25
    %201 = llvm.mlir.constant(0 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%201 : i64)
  ^bb34(%204: i64):  // 2 preds: ^bb33, ^bb44
    %205 = llvm.icmp "slt" %204, %202 : i64
    llvm.cond_br %205, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %206 = llvm.mlir.constant(0 : index) : i64
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%206 : i64)
  ^bb36(%209: i64):  // 2 preds: ^bb35, ^bb43
    %210 = llvm.icmp "slt" %209, %207 : i64
    llvm.cond_br %210, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %211 = llvm.mlir.constant(0 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%211 : i64)
  ^bb38(%214: i64):  // 2 preds: ^bb37, ^bb42
    %215 = llvm.icmp "slt" %214, %212 : i64
    llvm.cond_br %215, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %216 = llvm.mlir.constant(0 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%216 : i64)
  ^bb40(%219: i64):  // 2 preds: ^bb39, ^bb41
    %220 = llvm.icmp "slt" %219, %217 : i64
    llvm.cond_br %220, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %221 = llvm.extractvalue %113[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.add %204, %209  : i64
    %223 = llvm.add %222, %214  : i64
    %224 = llvm.add %223, %219  : i64
    %225 = llvm.getelementptr %221[%224] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %226 = llvm.load %225 : !llvm.ptr<f32>
    %227 = llvm.extractvalue %178[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %228 = llvm.add %204, %209  : i64
    %229 = llvm.add %228, %214  : i64
    %230 = llvm.getelementptr %227[%229] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %231 = llvm.load %230 : !llvm.ptr<f32>
    %232 = llvm.fadd %231, %226  : f32
    %233 = llvm.extractvalue %178[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %234 = llvm.add %204, %209  : i64
    %235 = llvm.add %234, %214  : i64
    %236 = llvm.getelementptr %233[%235] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %232, %236 : !llvm.ptr<f32>
    %237 = llvm.add %219, %218  : i64
    llvm.br ^bb40(%237 : i64)
  ^bb42:  // pred: ^bb40
    %238 = llvm.add %214, %213  : i64
    llvm.br ^bb38(%238 : i64)
  ^bb43:  // pred: ^bb38
    %239 = llvm.add %209, %208  : i64
    llvm.br ^bb36(%239 : i64)
  ^bb44:  // pred: ^bb36
    %240 = llvm.add %204, %203  : i64
    llvm.br ^bb34(%240 : i64)
  ^bb45:  // pred: ^bb34
    %241 = llvm.mlir.constant(0 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%241 : i64)
  ^bb46(%244: i64):  // 2 preds: ^bb45, ^bb53
    %245 = llvm.icmp "slt" %244, %242 : i64
    llvm.cond_br %245, ^bb47, ^bb54
  ^bb47:  // pred: ^bb46
    %246 = llvm.mlir.constant(0 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%246 : i64)
  ^bb48(%249: i64):  // 2 preds: ^bb47, ^bb52
    %250 = llvm.icmp "slt" %249, %247 : i64
    llvm.cond_br %250, ^bb49, ^bb53
  ^bb49:  // pred: ^bb48
    %251 = llvm.mlir.constant(0 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%251 : i64)
  ^bb50(%254: i64):  // 2 preds: ^bb49, ^bb51
    %255 = llvm.icmp "slt" %254, %252 : i64
    llvm.cond_br %255, ^bb51, ^bb52
  ^bb51:  // pred: ^bb50
    %256 = llvm.extractvalue %178[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %257 = llvm.add %244, %249  : i64
    %258 = llvm.add %257, %254  : i64
    %259 = llvm.getelementptr %256[%258] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %260 = llvm.load %259 : !llvm.ptr<f32>
    %261 = llvm.extractvalue %178[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %262 = llvm.add %244, %249  : i64
    %263 = llvm.add %262, %254  : i64
    %264 = llvm.getelementptr %261[%263] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %260, %264 : !llvm.ptr<f32>
    %265 = llvm.add %254, %253  : i64
    llvm.br ^bb50(%265 : i64)
  ^bb52:  // pred: ^bb50
    %266 = llvm.add %249, %248  : i64
    llvm.br ^bb48(%266 : i64)
  ^bb53:  // pred: ^bb48
    %267 = llvm.add %244, %243  : i64
    llvm.br ^bb46(%267 : i64)
  ^bb54:  // pred: ^bb46
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.mlir.constant(1 : index) : i64
    %272 = llvm.mlir.null : !llvm.ptr<f32>
    %273 = llvm.getelementptr %272[%268] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %274 = llvm.ptrtoint %273 : !llvm.ptr<f32> to i64
    %275 = llvm.mlir.constant(16 : index) : i64
    %276 = llvm.add %274, %275  : i64
    %277 = llvm.call @malloc(%276) : (i64) -> !llvm.ptr<i8>
    %278 = llvm.bitcast %277 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %279 = llvm.ptrtoint %278 : !llvm.ptr<f32> to i64
    %280 = llvm.mlir.constant(1 : index) : i64
    %281 = llvm.sub %275, %280  : i64
    %282 = llvm.add %279, %281  : i64
    %283 = llvm.urem %282, %275  : i64
    %284 = llvm.sub %282, %283  : i64
    %285 = llvm.inttoptr %284 : i64 to !llvm.ptr<f32>
    %286 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>
    %287 = llvm.insertvalue %278, %286[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %288 = llvm.insertvalue %285, %287[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %289 = llvm.mlir.constant(0 : index) : i64
    %290 = llvm.insertvalue %289, %288[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %291 = llvm.insertvalue %268, %290[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %292 = llvm.insertvalue %269, %291[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %293 = llvm.insertvalue %270, %292[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %294 = llvm.insertvalue %269, %293[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %295 = llvm.insertvalue %270, %294[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %296 = llvm.insertvalue %271, %295[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %297 = llvm.mlir.constant(0 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%297 : i64)
  ^bb55(%300: i64):  // 2 preds: ^bb54, ^bb62
    %301 = llvm.icmp "slt" %300, %298 : i64
    llvm.cond_br %301, ^bb56, ^bb63
  ^bb56:  // pred: ^bb55
    %302 = llvm.mlir.constant(0 : index) : i64
    %303 = llvm.mlir.constant(1 : index) : i64
    %304 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%302 : i64)
  ^bb57(%305: i64):  // 2 preds: ^bb56, ^bb61
    %306 = llvm.icmp "slt" %305, %303 : i64
    llvm.cond_br %306, ^bb58, ^bb62
  ^bb58:  // pred: ^bb57
    %307 = llvm.mlir.constant(0 : index) : i64
    %308 = llvm.mlir.constant(1 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%307 : i64)
  ^bb59(%310: i64):  // 2 preds: ^bb58, ^bb60
    %311 = llvm.icmp "slt" %310, %308 : i64
    llvm.cond_br %311, ^bb60, ^bb61
  ^bb60:  // pred: ^bb59
    %312 = llvm.extractvalue %178[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %313 = llvm.add %300, %305  : i64
    %314 = llvm.add %313, %310  : i64
    %315 = llvm.getelementptr %312[%314] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %316 = llvm.load %315 : !llvm.ptr<f32>
    %317 = llvm.fneg %316  : f32
    %318 = llvm.extractvalue %296[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %319 = llvm.add %300, %305  : i64
    %320 = llvm.add %319, %310  : i64
    %321 = llvm.getelementptr %318[%320] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %317, %321 : !llvm.ptr<f32>
    %322 = llvm.add %310, %309  : i64
    llvm.br ^bb59(%322 : i64)
  ^bb61:  // pred: ^bb59
    %323 = llvm.add %305, %304  : i64
    llvm.br ^bb57(%323 : i64)
  ^bb62:  // pred: ^bb57
    %324 = llvm.add %300, %299  : i64
    llvm.br ^bb55(%324 : i64)
  ^bb63:  // pred: ^bb55
    %325 = llvm.mlir.constant(1 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    %329 = llvm.mlir.null : !llvm.ptr<f32>
    %330 = llvm.getelementptr %329[%325] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %331 = llvm.ptrtoint %330 : !llvm.ptr<f32> to i64
    %332 = llvm.mlir.constant(16 : index) : i64
    %333 = llvm.add %331, %332  : i64
    %334 = llvm.call @malloc(%333) : (i64) -> !llvm.ptr<i8>
    %335 = llvm.bitcast %334 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %336 = llvm.ptrtoint %335 : !llvm.ptr<f32> to i64
    %337 = llvm.mlir.constant(1 : index) : i64
    %338 = llvm.sub %332, %337  : i64
    %339 = llvm.add %336, %338  : i64
    %340 = llvm.urem %339, %332  : i64
    %341 = llvm.sub %339, %340  : i64
    %342 = llvm.inttoptr %341 : i64 to !llvm.ptr<f32>
    %343 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>
    %344 = llvm.insertvalue %335, %343[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %345 = llvm.insertvalue %342, %344[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %346 = llvm.mlir.constant(0 : index) : i64
    %347 = llvm.insertvalue %346, %345[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %348 = llvm.insertvalue %325, %347[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %349 = llvm.insertvalue %326, %348[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %350 = llvm.insertvalue %327, %349[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %351 = llvm.insertvalue %326, %350[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %352 = llvm.insertvalue %327, %351[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %353 = llvm.insertvalue %328, %352[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %354 = llvm.mlir.constant(0 : index) : i64
    %355 = llvm.mlir.constant(1 : index) : i64
    %356 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%354 : i64)
  ^bb64(%357: i64):  // 2 preds: ^bb63, ^bb71
    %358 = llvm.icmp "slt" %357, %355 : i64
    llvm.cond_br %358, ^bb65, ^bb72
  ^bb65:  // pred: ^bb64
    %359 = llvm.mlir.constant(0 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%359 : i64)
  ^bb66(%362: i64):  // 2 preds: ^bb65, ^bb70
    %363 = llvm.icmp "slt" %362, %360 : i64
    llvm.cond_br %363, ^bb67, ^bb71
  ^bb67:  // pred: ^bb66
    %364 = llvm.mlir.constant(0 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    %366 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%364 : i64)
  ^bb68(%367: i64):  // 2 preds: ^bb67, ^bb69
    %368 = llvm.icmp "slt" %367, %365 : i64
    llvm.cond_br %368, ^bb69, ^bb70
  ^bb69:  // pred: ^bb68
    %369 = llvm.extractvalue %296[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %370 = llvm.add %357, %362  : i64
    %371 = llvm.add %370, %367  : i64
    %372 = llvm.getelementptr %369[%371] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %373 = llvm.load %372 : !llvm.ptr<f32>
    %374 = llvm.extractvalue %296[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %375 = llvm.add %357, %362  : i64
    %376 = llvm.add %375, %367  : i64
    %377 = llvm.getelementptr %374[%376] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %378 = llvm.load %377 : !llvm.ptr<f32>
    %379 = llvm.fadd %373, %378  : f32
    %380 = llvm.extractvalue %353[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %381 = llvm.add %357, %362  : i64
    %382 = llvm.add %381, %367  : i64
    %383 = llvm.getelementptr %380[%382] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %379, %383 : !llvm.ptr<f32>
    %384 = llvm.add %367, %366  : i64
    llvm.br ^bb68(%384 : i64)
  ^bb70:  // pred: ^bb68
    %385 = llvm.add %362, %361  : i64
    llvm.br ^bb66(%385 : i64)
  ^bb71:  // pred: ^bb66
    %386 = llvm.add %357, %356  : i64
    llvm.br ^bb64(%386 : i64)
  ^bb72:  // pred: ^bb64
    llvm.return %353 : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>>
    %45 = llvm.mlir.constant(1 : i64) : i64
    %46 = llvm.mlir.constant(8 : i64) : i64
    %47 = llvm.call @malloc(%46) : (i64) -> !llvm.ptr<i8>
    %48 = llvm.bitcast %47 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %49 = llvm.mlir.constant(3 : i64) : i64
    %50 = llvm.call @omTensorCreateUntyped(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.mlir.constant(1 : i64) : i64
    %52 = llvm.extractvalue %44[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %53 = llvm.bitcast %52 : !llvm.ptr<f32> to !llvm.ptr<i8>
    %54 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<f32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%50, %51, %53, %55) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %56 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @omTensorSetDataType(%50, %56) : (!llvm.ptr<i8>, i64) -> ()
    %57 = llvm.call @omTensorGetShape(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %58 = llvm.call @omTensorGetStrides(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %59 = llvm.mlir.constant(0 : i64) : i64
    %60 = llvm.extractvalue %44[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %61 = llvm.getelementptr %57[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %60, %61 : !llvm.ptr<i64>
    %62 = llvm.extractvalue %44[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.getelementptr %58[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.extractvalue %44[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %66 = llvm.getelementptr %57[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.extractvalue %44[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.getelementptr %58[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.mlir.constant(2 : i64) : i64
    %70 = llvm.extractvalue %44[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %71 = llvm.getelementptr %57[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.extractvalue %44[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.getelementptr %58[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.mlir.constant(0 : i64) : i64
    %75 = llvm.getelementptr %48[%74] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %50, %75 : !llvm.ptr<ptr<i8>>
    %76 = llvm.call @omTensorListCreate(%48, %45, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %76 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<67 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<67 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

