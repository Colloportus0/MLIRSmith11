module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22f32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22f32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_5(dense<3.72073078> : tensor<1x1x1xf32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x f32>>>
  llvm.mlir.global internal constant @constant_4(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<6.44804239> : tensor<1x1xf32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x f32>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v4_0", "v2_0"]} {
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
    %12 = llvm.mlir.constant(0xFF800000 : f32) : f32
    %13 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %14 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x f32>>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<1 x array<1 x f32>>> to !llvm.ptr<f32>
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %17 = llvm.insertvalue %15, %16[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %15, %17[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.insertvalue %19, %18[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.insertvalue %21, %20[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.insertvalue %23, %22[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.insertvalue %25, %24[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.insertvalue %27, %26[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i32>>
    %30 = llvm.bitcast %29 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %31 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %32 = llvm.insertvalue %30, %31[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %33 = llvm.insertvalue %30, %32[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %34 = llvm.mlir.constant(0 : index) : i64
    %35 = llvm.insertvalue %34, %33[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %36 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x i32>>
    %37 = llvm.bitcast %36 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %38 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %39 = llvm.insertvalue %37, %38[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %40 = llvm.insertvalue %37, %39[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %41 = llvm.mlir.constant(0 : index) : i64
    %42 = llvm.insertvalue %41, %40[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %43 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x array<1 x array<1 x f32>>>>
    %44 = llvm.bitcast %43 : !llvm.ptr<array<1 x array<1 x array<1 x f32>>>> to !llvm.ptr<f32>
    %45 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>
    %46 = llvm.insertvalue %44, %45[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %47 = llvm.insertvalue %44, %46[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %48 = llvm.mlir.constant(0 : index) : i64
    %49 = llvm.insertvalue %48, %47[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.insertvalue %50, %49[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.insertvalue %52, %51[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.insertvalue %54, %53[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.insertvalue %58, %57[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.insertvalue %60, %59[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.mlir.null : !llvm.ptr<i32>
    %68 = llvm.getelementptr %67[%62] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %69 = llvm.ptrtoint %68 : !llvm.ptr<i32> to i64
    %70 = llvm.mlir.constant(16 : index) : i64
    %71 = llvm.add %69, %70  : i64
    %72 = llvm.call @malloc(%71) : (i64) -> !llvm.ptr<i8>
    %73 = llvm.bitcast %72 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %74 = llvm.ptrtoint %73 : !llvm.ptr<i32> to i64
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.sub %70, %75  : i64
    %77 = llvm.add %74, %76  : i64
    %78 = llvm.urem %77, %70  : i64
    %79 = llvm.sub %77, %78  : i64
    %80 = llvm.inttoptr %79 : i64 to !llvm.ptr<i32>
    %81 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %82 = llvm.insertvalue %73, %81[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.insertvalue %80, %82[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.mlir.constant(0 : index) : i64
    %85 = llvm.insertvalue %84, %83[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.insertvalue %62, %85[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.insertvalue %63, %86[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.insertvalue %64, %87[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.insertvalue %65, %88[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.insertvalue %63, %89[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.insertvalue %64, %90[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.insertvalue %65, %91[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.insertvalue %66, %92[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.mlir.constant(0 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%94 : i64)
  ^bb1(%97: i64):  // 2 preds: ^bb0, ^bb11
    %98 = llvm.icmp "slt" %97, %95 : i64
    llvm.cond_br %98, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %99 = llvm.mlir.constant(0 : index) : i64
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%99 : i64)
  ^bb3(%102: i64):  // 2 preds: ^bb2, ^bb10
    %103 = llvm.icmp "slt" %102, %100 : i64
    llvm.cond_br %103, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %104 = llvm.mlir.constant(0 : index) : i64
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%104 : i64)
  ^bb5(%107: i64):  // 2 preds: ^bb4, ^bb9
    %108 = llvm.icmp "slt" %107, %105 : i64
    llvm.cond_br %108, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %109 = llvm.mlir.constant(0 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%109 : i64)
  ^bb7(%112: i64):  // 2 preds: ^bb6, ^bb8
    %113 = llvm.icmp "slt" %112, %110 : i64
    llvm.cond_br %113, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %114 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.add %97, %102  : i64
    %116 = llvm.add %115, %107  : i64
    %117 = llvm.add %116, %112  : i64
    %118 = llvm.getelementptr %114[%117] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %119 = llvm.load %118 : !llvm.ptr<i32>
    %120 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %121 = llvm.load %120 : !llvm.ptr<i32>
    %122 = llvm.icmp "slt" %119, %121 : i32
    %123 = llvm.select %122, %121, %119 : i1, i32
    %124 = llvm.extractvalue %42[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %125 = llvm.load %124 : !llvm.ptr<i32>
    %126 = llvm.icmp "slt" %123, %125 : i32
    %127 = llvm.select %126, %123, %125 : i1, i32
    %128 = llvm.extractvalue %93[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.add %97, %102  : i64
    %130 = llvm.add %129, %107  : i64
    %131 = llvm.add %130, %112  : i64
    %132 = llvm.getelementptr %128[%131] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %127, %132 : !llvm.ptr<i32>
    %133 = llvm.add %112, %111  : i64
    llvm.br ^bb7(%133 : i64)
  ^bb9:  // pred: ^bb7
    %134 = llvm.add %107, %106  : i64
    llvm.br ^bb5(%134 : i64)
  ^bb10:  // pred: ^bb5
    %135 = llvm.add %102, %101  : i64
    llvm.br ^bb3(%135 : i64)
  ^bb11:  // pred: ^bb3
    %136 = llvm.add %97, %96  : i64
    llvm.br ^bb1(%136 : i64)
  ^bb12:  // pred: ^bb1
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.null : !llvm.ptr<i32>
    %143 = llvm.getelementptr %142[%137] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %144 = llvm.ptrtoint %143 : !llvm.ptr<i32> to i64
    %145 = llvm.mlir.constant(16 : index) : i64
    %146 = llvm.add %144, %145  : i64
    %147 = llvm.call @malloc(%146) : (i64) -> !llvm.ptr<i8>
    %148 = llvm.bitcast %147 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %149 = llvm.ptrtoint %148 : !llvm.ptr<i32> to i64
    %150 = llvm.mlir.constant(1 : index) : i64
    %151 = llvm.sub %145, %150  : i64
    %152 = llvm.add %149, %151  : i64
    %153 = llvm.urem %152, %145  : i64
    %154 = llvm.sub %152, %153  : i64
    %155 = llvm.inttoptr %154 : i64 to !llvm.ptr<i32>
    %156 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %157 = llvm.insertvalue %148, %156[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.insertvalue %155, %157[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.mlir.constant(0 : index) : i64
    %160 = llvm.insertvalue %159, %158[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.insertvalue %137, %160[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.insertvalue %138, %161[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.insertvalue %139, %162[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.insertvalue %140, %163[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.insertvalue %138, %164[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.insertvalue %139, %165[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.insertvalue %140, %166[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.insertvalue %141, %167[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%169 : i64)
  ^bb13(%172: i64):  // 2 preds: ^bb12, ^bb23
    %173 = llvm.icmp "slt" %172, %170 : i64
    llvm.cond_br %173, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %174 = llvm.mlir.constant(0 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%174 : i64)
  ^bb15(%177: i64):  // 2 preds: ^bb14, ^bb22
    %178 = llvm.icmp "slt" %177, %175 : i64
    llvm.cond_br %178, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %179 = llvm.mlir.constant(0 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%179 : i64)
  ^bb17(%182: i64):  // 2 preds: ^bb16, ^bb21
    %183 = llvm.icmp "slt" %182, %180 : i64
    llvm.cond_br %183, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %184 = llvm.mlir.constant(0 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%184 : i64)
  ^bb19(%187: i64):  // 2 preds: ^bb18, ^bb20
    %188 = llvm.icmp "slt" %187, %185 : i64
    llvm.cond_br %188, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %189 = llvm.extractvalue %93[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.add %172, %177  : i64
    %191 = llvm.add %190, %182  : i64
    %192 = llvm.add %191, %187  : i64
    %193 = llvm.getelementptr %189[%192] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %194 = llvm.load %193 : !llvm.ptr<i32>
    %195 = llvm.extractvalue %93[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.add %172, %177  : i64
    %197 = llvm.add %196, %182  : i64
    %198 = llvm.add %197, %187  : i64
    %199 = llvm.getelementptr %195[%198] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %200 = llvm.load %199 : !llvm.ptr<i32>
    %201 = llvm.add %194, %200  : i32
    %202 = llvm.extractvalue %168[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.add %172, %177  : i64
    %204 = llvm.add %203, %182  : i64
    %205 = llvm.add %204, %187  : i64
    %206 = llvm.getelementptr %202[%205] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %201, %206 : !llvm.ptr<i32>
    %207 = llvm.add %187, %186  : i64
    llvm.br ^bb19(%207 : i64)
  ^bb21:  // pred: ^bb19
    %208 = llvm.add %182, %181  : i64
    llvm.br ^bb17(%208 : i64)
  ^bb22:  // pred: ^bb17
    %209 = llvm.add %177, %176  : i64
    llvm.br ^bb15(%209 : i64)
  ^bb23:  // pred: ^bb15
    %210 = llvm.add %172, %171  : i64
    llvm.br ^bb13(%210 : i64)
  ^bb24:  // pred: ^bb13
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    %216 = llvm.mlir.null : !llvm.ptr<f32>
    %217 = llvm.getelementptr %216[%211] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %218 = llvm.ptrtoint %217 : !llvm.ptr<f32> to i64
    %219 = llvm.mlir.constant(16 : index) : i64
    %220 = llvm.add %218, %219  : i64
    %221 = llvm.call @malloc(%220) : (i64) -> !llvm.ptr<i8>
    %222 = llvm.bitcast %221 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %223 = llvm.ptrtoint %222 : !llvm.ptr<f32> to i64
    %224 = llvm.mlir.constant(1 : index) : i64
    %225 = llvm.sub %219, %224  : i64
    %226 = llvm.add %223, %225  : i64
    %227 = llvm.urem %226, %219  : i64
    %228 = llvm.sub %226, %227  : i64
    %229 = llvm.inttoptr %228 : i64 to !llvm.ptr<f32>
    %230 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %231 = llvm.insertvalue %222, %230[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.insertvalue %229, %231[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.mlir.constant(0 : index) : i64
    %234 = llvm.insertvalue %233, %232[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %235 = llvm.insertvalue %211, %234[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %236 = llvm.insertvalue %212, %235[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.insertvalue %213, %236[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %238 = llvm.insertvalue %214, %237[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %239 = llvm.insertvalue %212, %238[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.insertvalue %213, %239[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %241 = llvm.insertvalue %214, %240[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.insertvalue %215, %241[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %243 = llvm.mlir.constant(0 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%243 : i64)
  ^bb25(%246: i64):  // 2 preds: ^bb24, ^bb35
    %247 = llvm.icmp "slt" %246, %244 : i64
    llvm.cond_br %247, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %248 = llvm.mlir.constant(0 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%248 : i64)
  ^bb27(%251: i64):  // 2 preds: ^bb26, ^bb34
    %252 = llvm.icmp "slt" %251, %249 : i64
    llvm.cond_br %252, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %253 = llvm.mlir.constant(0 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%253 : i64)
  ^bb29(%256: i64):  // 2 preds: ^bb28, ^bb33
    %257 = llvm.icmp "slt" %256, %254 : i64
    llvm.cond_br %257, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %258 = llvm.mlir.constant(0 : index) : i64
    %259 = llvm.mlir.constant(1 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%258 : i64)
  ^bb31(%261: i64):  // 2 preds: ^bb30, ^bb32
    %262 = llvm.icmp "slt" %261, %259 : i64
    llvm.cond_br %262, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %263 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %264 = llvm.add %246, %251  : i64
    %265 = llvm.add %264, %256  : i64
    %266 = llvm.add %265, %261  : i64
    %267 = llvm.getelementptr %263[%266] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %268 = llvm.load %267 : !llvm.ptr<i32>
    %269 = llvm.sitofp %268 : i32 to f32
    %270 = llvm.extractvalue %242[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %271 = llvm.add %246, %251  : i64
    %272 = llvm.add %271, %256  : i64
    %273 = llvm.add %272, %261  : i64
    %274 = llvm.getelementptr %270[%273] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %269, %274 : !llvm.ptr<f32>
    %275 = llvm.add %261, %260  : i64
    llvm.br ^bb31(%275 : i64)
  ^bb33:  // pred: ^bb31
    %276 = llvm.add %256, %255  : i64
    llvm.br ^bb29(%276 : i64)
  ^bb34:  // pred: ^bb29
    %277 = llvm.add %251, %250  : i64
    llvm.br ^bb27(%277 : i64)
  ^bb35:  // pred: ^bb27
    %278 = llvm.add %246, %245  : i64
    llvm.br ^bb25(%278 : i64)
  ^bb36:  // pred: ^bb25
    %279 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>
    %280 = llvm.extractvalue %242[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.extractvalue %242[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.insertvalue %280, %279[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %283 = llvm.insertvalue %281, %282[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %284 = llvm.mlir.constant(0 : index) : i64
    %285 = llvm.insertvalue %284, %283[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.insertvalue %286, %285[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %288 = llvm.mlir.constant(1 : index) : i64
    %289 = llvm.insertvalue %288, %287[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %290 = llvm.mlir.constant(1 : index) : i64
    %291 = llvm.insertvalue %290, %289[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %292 = llvm.mlir.constant(1 : index) : i64
    %293 = llvm.insertvalue %292, %291[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.insertvalue %294, %293[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %296 = llvm.mlir.constant(1 : index) : i64
    %297 = llvm.insertvalue %296, %295[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.mlir.constant(1 : index) : i64
    %300 = llvm.mlir.constant(1 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.mlir.null : !llvm.ptr<f32>
    %303 = llvm.getelementptr %302[%298] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %304 = llvm.ptrtoint %303 : !llvm.ptr<f32> to i64
    %305 = llvm.mlir.constant(16 : index) : i64
    %306 = llvm.add %304, %305  : i64
    %307 = llvm.call @malloc(%306) : (i64) -> !llvm.ptr<i8>
    %308 = llvm.bitcast %307 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %309 = llvm.ptrtoint %308 : !llvm.ptr<f32> to i64
    %310 = llvm.mlir.constant(1 : index) : i64
    %311 = llvm.sub %305, %310  : i64
    %312 = llvm.add %309, %311  : i64
    %313 = llvm.urem %312, %305  : i64
    %314 = llvm.sub %312, %313  : i64
    %315 = llvm.inttoptr %314 : i64 to !llvm.ptr<f32>
    %316 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>
    %317 = llvm.insertvalue %308, %316[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %318 = llvm.insertvalue %315, %317[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %319 = llvm.mlir.constant(0 : index) : i64
    %320 = llvm.insertvalue %319, %318[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %321 = llvm.insertvalue %298, %320[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %322 = llvm.insertvalue %299, %321[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %323 = llvm.insertvalue %300, %322[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %324 = llvm.insertvalue %299, %323[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %325 = llvm.insertvalue %300, %324[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %326 = llvm.insertvalue %301, %325[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %327 = llvm.mlir.constant(1 : index) : i64
    %328 = llvm.mlir.null : !llvm.ptr<f32>
    %329 = llvm.getelementptr %328[%327] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %330 = llvm.ptrtoint %329 : !llvm.ptr<f32> to i64
    %331 = llvm.alloca %330 x f32 : (i64) -> !llvm.ptr<f32>
    %332 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64)>
    %333 = llvm.insertvalue %331, %332[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %334 = llvm.insertvalue %331, %333[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %335 = llvm.mlir.constant(0 : index) : i64
    %336 = llvm.insertvalue %335, %334[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %337 = llvm.mlir.constant(0 : index) : i64
    %338 = llvm.mlir.constant(1 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%337 : i64)
  ^bb37(%340: i64):  // 2 preds: ^bb36, ^bb47
    %341 = llvm.icmp "slt" %340, %338 : i64
    llvm.cond_br %341, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.mlir.constant(1 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%342 : i64)
  ^bb39(%345: i64):  // 2 preds: ^bb38, ^bb46
    %346 = llvm.icmp "slt" %345, %343 : i64
    llvm.cond_br %346, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %347 = llvm.mlir.constant(0 : index) : i64
    %348 = llvm.mlir.constant(1 : index) : i64
    %349 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%347 : i64)
  ^bb41(%350: i64):  // 2 preds: ^bb40, ^bb45
    %351 = llvm.icmp "slt" %350, %348 : i64
    llvm.cond_br %351, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %352 = llvm.extractvalue %336[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    llvm.store %13, %352 : !llvm.ptr<f32>
    %353 = llvm.mlir.constant(0 : index) : i64
    %354 = llvm.mlir.constant(1 : index) : i64
    %355 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%353 : i64)
  ^bb43(%356: i64):  // 2 preds: ^bb42, ^bb44
    %357 = llvm.icmp "slt" %356, %354 : i64
    llvm.cond_br %357, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %358 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %359 = llvm.add %345, %356  : i64
    %360 = llvm.getelementptr %358[%359] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %361 = llvm.load %360 : !llvm.ptr<f32>
    %362 = llvm.extractvalue %297[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %363 = llvm.add %340, %356  : i64
    %364 = llvm.add %363, %350  : i64
    %365 = llvm.getelementptr %362[%364] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %366 = llvm.load %365 : !llvm.ptr<f32>
    %367 = llvm.extractvalue %336[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %368 = llvm.load %367 : !llvm.ptr<f32>
    %369 = llvm.fmul %361, %366  : f32
    %370 = llvm.fadd %368, %369  : f32
    %371 = llvm.extractvalue %336[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    llvm.store %370, %371 : !llvm.ptr<f32>
    %372 = llvm.add %356, %355  : i64
    llvm.br ^bb43(%372 : i64)
  ^bb45:  // pred: ^bb43
    %373 = llvm.extractvalue %336[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %374 = llvm.load %373 : !llvm.ptr<f32>
    %375 = llvm.extractvalue %326[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %376 = llvm.add %340, %345  : i64
    %377 = llvm.add %376, %350  : i64
    %378 = llvm.getelementptr %375[%377] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %374, %378 : !llvm.ptr<f32>
    %379 = llvm.add %350, %349  : i64
    llvm.br ^bb41(%379 : i64)
  ^bb46:  // pred: ^bb41
    %380 = llvm.add %345, %344  : i64
    llvm.br ^bb39(%380 : i64)
  ^bb47:  // pred: ^bb39
    %381 = llvm.add %340, %339  : i64
    llvm.br ^bb37(%381 : i64)
  ^bb48:  // pred: ^bb37
    %382 = llvm.mlir.constant(1 : index) : i64
    %383 = llvm.mlir.constant(1 : index) : i64
    %384 = llvm.mlir.constant(1 : index) : i64
    %385 = llvm.mlir.constant(1 : index) : i64
    %386 = llvm.mlir.null : !llvm.ptr<f32>
    %387 = llvm.getelementptr %386[%382] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %388 = llvm.ptrtoint %387 : !llvm.ptr<f32> to i64
    %389 = llvm.mlir.constant(16 : index) : i64
    %390 = llvm.add %388, %389  : i64
    %391 = llvm.call @malloc(%390) : (i64) -> !llvm.ptr<i8>
    %392 = llvm.bitcast %391 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %393 = llvm.ptrtoint %392 : !llvm.ptr<f32> to i64
    %394 = llvm.mlir.constant(1 : index) : i64
    %395 = llvm.sub %389, %394  : i64
    %396 = llvm.add %393, %395  : i64
    %397 = llvm.urem %396, %389  : i64
    %398 = llvm.sub %396, %397  : i64
    %399 = llvm.inttoptr %398 : i64 to !llvm.ptr<f32>
    %400 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>
    %401 = llvm.insertvalue %392, %400[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %402 = llvm.insertvalue %399, %401[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %403 = llvm.mlir.constant(0 : index) : i64
    %404 = llvm.insertvalue %403, %402[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %405 = llvm.insertvalue %382, %404[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %406 = llvm.insertvalue %383, %405[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %407 = llvm.insertvalue %384, %406[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %408 = llvm.insertvalue %383, %407[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %409 = llvm.insertvalue %384, %408[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %410 = llvm.insertvalue %385, %409[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %411 = llvm.mlir.constant(0 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    %413 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%411 : i64)
  ^bb49(%414: i64):  // 2 preds: ^bb48, ^bb56
    %415 = llvm.icmp "slt" %414, %412 : i64
    llvm.cond_br %415, ^bb50, ^bb57
  ^bb50:  // pred: ^bb49
    %416 = llvm.mlir.constant(0 : index) : i64
    %417 = llvm.mlir.constant(1 : index) : i64
    %418 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%416 : i64)
  ^bb51(%419: i64):  // 2 preds: ^bb50, ^bb55
    %420 = llvm.icmp "slt" %419, %417 : i64
    llvm.cond_br %420, ^bb52, ^bb56
  ^bb52:  // pred: ^bb51
    %421 = llvm.mlir.constant(0 : index) : i64
    %422 = llvm.mlir.constant(1 : index) : i64
    %423 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%421 : i64)
  ^bb53(%424: i64):  // 2 preds: ^bb52, ^bb54
    %425 = llvm.icmp "slt" %424, %422 : i64
    llvm.cond_br %425, ^bb54, ^bb55
  ^bb54:  // pred: ^bb53
    %426 = llvm.extractvalue %326[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %427 = llvm.add %414, %419  : i64
    %428 = llvm.add %427, %424  : i64
    %429 = llvm.getelementptr %426[%428] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %430 = llvm.load %429 : !llvm.ptr<f32>
    %431 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %432 = llvm.add %414, %419  : i64
    %433 = llvm.add %432, %424  : i64
    %434 = llvm.getelementptr %431[%433] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %435 = llvm.load %434 : !llvm.ptr<f32>
    %436 = llvm.fadd %430, %435  : f32
    %437 = llvm.extractvalue %410[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %438 = llvm.add %414, %419  : i64
    %439 = llvm.add %438, %424  : i64
    %440 = llvm.getelementptr %437[%439] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %436, %440 : !llvm.ptr<f32>
    %441 = llvm.add %424, %423  : i64
    llvm.br ^bb53(%441 : i64)
  ^bb55:  // pred: ^bb53
    %442 = llvm.add %419, %418  : i64
    llvm.br ^bb51(%442 : i64)
  ^bb56:  // pred: ^bb51
    %443 = llvm.add %414, %413  : i64
    llvm.br ^bb49(%443 : i64)
  ^bb57:  // pred: ^bb49
    %444 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %445 = llvm.extractvalue %410[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %446 = llvm.extractvalue %410[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %447 = llvm.insertvalue %445, %444[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.insertvalue %446, %447[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.mlir.constant(0 : index) : i64
    %450 = llvm.insertvalue %449, %448[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %451 = llvm.mlir.constant(1 : index) : i64
    %452 = llvm.insertvalue %451, %450[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %453 = llvm.mlir.constant(1 : index) : i64
    %454 = llvm.insertvalue %453, %452[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %455 = llvm.mlir.constant(1 : index) : i64
    %456 = llvm.insertvalue %455, %454[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %457 = llvm.mlir.constant(1 : index) : i64
    %458 = llvm.insertvalue %457, %456[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %459 = llvm.mlir.constant(1 : index) : i64
    %460 = llvm.insertvalue %459, %458[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %461 = llvm.mlir.constant(1 : index) : i64
    %462 = llvm.insertvalue %461, %460[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %463 = llvm.mlir.constant(1 : index) : i64
    %464 = llvm.insertvalue %463, %462[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %465 = llvm.mlir.constant(1 : index) : i64
    %466 = llvm.insertvalue %465, %464[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.mlir.constant(1 : index) : i64
    %468 = llvm.mlir.constant(1 : index) : i64
    %469 = llvm.mlir.constant(1 : index) : i64
    %470 = llvm.mlir.constant(1 : index) : i64
    %471 = llvm.mlir.constant(1 : index) : i64
    %472 = llvm.mlir.null : !llvm.ptr<f32>
    %473 = llvm.getelementptr %472[%467] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %474 = llvm.ptrtoint %473 : !llvm.ptr<f32> to i64
    %475 = llvm.mlir.constant(16 : index) : i64
    %476 = llvm.add %474, %475  : i64
    %477 = llvm.call @malloc(%476) : (i64) -> !llvm.ptr<i8>
    %478 = llvm.bitcast %477 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %479 = llvm.ptrtoint %478 : !llvm.ptr<f32> to i64
    %480 = llvm.mlir.constant(1 : index) : i64
    %481 = llvm.sub %475, %480  : i64
    %482 = llvm.add %479, %481  : i64
    %483 = llvm.urem %482, %475  : i64
    %484 = llvm.sub %482, %483  : i64
    %485 = llvm.inttoptr %484 : i64 to !llvm.ptr<f32>
    %486 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %487 = llvm.insertvalue %478, %486[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %488 = llvm.insertvalue %485, %487[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %489 = llvm.mlir.constant(0 : index) : i64
    %490 = llvm.insertvalue %489, %488[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %491 = llvm.insertvalue %467, %490[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %492 = llvm.insertvalue %468, %491[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %493 = llvm.insertvalue %469, %492[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %494 = llvm.insertvalue %470, %493[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %495 = llvm.insertvalue %468, %494[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %496 = llvm.insertvalue %469, %495[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %497 = llvm.insertvalue %470, %496[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %498 = llvm.insertvalue %471, %497[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %499 = llvm.mlir.constant(1 : index) : i64
    %500 = llvm.mlir.null : !llvm.ptr<f32>
    %501 = llvm.getelementptr %500[%499] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %502 = llvm.ptrtoint %501 : !llvm.ptr<f32> to i64
    %503 = llvm.call @malloc(%502) : (i64) -> !llvm.ptr<i8>
    %504 = llvm.bitcast %503 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %505 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64)>
    %506 = llvm.insertvalue %504, %505[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %507 = llvm.insertvalue %504, %506[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %508 = llvm.mlir.constant(0 : index) : i64
    %509 = llvm.insertvalue %508, %507[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %510 = llvm.mlir.constant(1 : index) : i64
    %511 = llvm.mlir.null : !llvm.ptr<f32>
    %512 = llvm.getelementptr %511[%510] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %513 = llvm.ptrtoint %512 : !llvm.ptr<f32> to i64
    %514 = llvm.call @malloc(%513) : (i64) -> !llvm.ptr<i8>
    %515 = llvm.bitcast %514 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %516 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64)>
    %517 = llvm.insertvalue %515, %516[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %518 = llvm.insertvalue %515, %517[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %519 = llvm.mlir.constant(0 : index) : i64
    %520 = llvm.insertvalue %519, %518[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %521 = llvm.mlir.constant(0 : index) : i64
    %522 = llvm.mlir.constant(1 : index) : i64
    %523 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%521 : i64)
  ^bb58(%524: i64):  // 2 preds: ^bb57, ^bb74
    %525 = llvm.icmp "slt" %524, %522 : i64
    llvm.cond_br %525, ^bb59, ^bb75
  ^bb59:  // pred: ^bb58
    %526 = llvm.mlir.constant(0 : index) : i64
    %527 = llvm.mlir.constant(1 : index) : i64
    %528 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%526 : i64)
  ^bb60(%529: i64):  // 2 preds: ^bb59, ^bb73
    %530 = llvm.icmp "slt" %529, %527 : i64
    llvm.cond_br %530, ^bb61, ^bb74
  ^bb61:  // pred: ^bb60
    %531 = llvm.mlir.constant(0 : index) : i64
    %532 = llvm.mlir.constant(1 : index) : i64
    %533 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%531 : i64)
  ^bb62(%534: i64):  // 2 preds: ^bb61, ^bb72
    %535 = llvm.icmp "slt" %534, %532 : i64
    llvm.cond_br %535, ^bb63, ^bb73
  ^bb63:  // pred: ^bb62
    %536 = llvm.extractvalue %509[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    llvm.store %13, %536 : !llvm.ptr<f32>
    %537 = llvm.extractvalue %520[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    llvm.store %12, %537 : !llvm.ptr<f32>
    %538 = llvm.mlir.constant(0 : index) : i64
    %539 = llvm.mlir.constant(1 : index) : i64
    %540 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%538 : i64)
  ^bb64(%541: i64):  // 2 preds: ^bb63, ^bb65
    %542 = llvm.icmp "slt" %541, %539 : i64
    llvm.cond_br %542, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %543 = llvm.extractvalue %520[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %544 = llvm.load %543 : !llvm.ptr<f32>
    %545 = llvm.extractvalue %242[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %546 = llvm.add %541, %524  : i64
    %547 = llvm.add %546, %529  : i64
    %548 = llvm.add %547, %534  : i64
    %549 = llvm.getelementptr %545[%548] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %550 = llvm.load %549 : !llvm.ptr<f32>
    %551 = llvm.fcmp "ogt" %544, %550 : f32
    %552 = llvm.select %551, %544, %550 : i1, f32
    %553 = llvm.extractvalue %520[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    llvm.store %552, %553 : !llvm.ptr<f32>
    %554 = llvm.add %541, %540  : i64
    llvm.br ^bb64(%554 : i64)
  ^bb66:  // pred: ^bb64
    %555 = llvm.extractvalue %520[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %556 = llvm.load %555 : !llvm.ptr<f32>
    %557 = llvm.mlir.constant(0 : index) : i64
    %558 = llvm.mlir.constant(1 : index) : i64
    %559 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%557 : i64)
  ^bb67(%560: i64):  // 2 preds: ^bb66, ^bb68
    %561 = llvm.icmp "slt" %560, %558 : i64
    llvm.cond_br %561, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %562 = llvm.extractvalue %509[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %563 = llvm.load %562 : !llvm.ptr<f32>
    %564 = llvm.extractvalue %242[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %565 = llvm.add %560, %524  : i64
    %566 = llvm.add %565, %529  : i64
    %567 = llvm.add %566, %534  : i64
    %568 = llvm.getelementptr %564[%567] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %569 = llvm.load %568 : !llvm.ptr<f32>
    %570 = llvm.fsub %569, %556  : f32
    %571 = llvm.intr.exp(%570)  : (f32) -> f32
    %572 = llvm.fadd %563, %571  : f32
    %573 = llvm.extractvalue %509[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    llvm.store %572, %573 : !llvm.ptr<f32>
    %574 = llvm.extractvalue %498[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %575 = llvm.add %560, %524  : i64
    %576 = llvm.add %575, %529  : i64
    %577 = llvm.add %576, %534  : i64
    %578 = llvm.getelementptr %574[%577] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %571, %578 : !llvm.ptr<f32>
    %579 = llvm.add %560, %559  : i64
    llvm.br ^bb67(%579 : i64)
  ^bb69:  // pred: ^bb67
    %580 = llvm.extractvalue %509[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %581 = llvm.load %580 : !llvm.ptr<f32>
    %582 = llvm.mlir.constant(0 : index) : i64
    %583 = llvm.mlir.constant(1 : index) : i64
    %584 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%582 : i64)
  ^bb70(%585: i64):  // 2 preds: ^bb69, ^bb71
    %586 = llvm.icmp "slt" %585, %583 : i64
    llvm.cond_br %586, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %587 = llvm.extractvalue %498[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %588 = llvm.add %585, %524  : i64
    %589 = llvm.add %588, %529  : i64
    %590 = llvm.add %589, %534  : i64
    %591 = llvm.getelementptr %587[%590] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %592 = llvm.load %591 : !llvm.ptr<f32>
    %593 = llvm.fdiv %592, %581  : f32
    %594 = llvm.extractvalue %498[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %595 = llvm.add %585, %524  : i64
    %596 = llvm.add %595, %529  : i64
    %597 = llvm.add %596, %534  : i64
    %598 = llvm.getelementptr %594[%597] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %593, %598 : !llvm.ptr<f32>
    %599 = llvm.add %585, %584  : i64
    llvm.br ^bb70(%599 : i64)
  ^bb72:  // pred: ^bb70
    %600 = llvm.add %534, %533  : i64
    llvm.br ^bb62(%600 : i64)
  ^bb73:  // pred: ^bb62
    %601 = llvm.add %529, %528  : i64
    llvm.br ^bb60(%601 : i64)
  ^bb74:  // pred: ^bb60
    %602 = llvm.add %524, %523  : i64
    llvm.br ^bb58(%602 : i64)
  ^bb75:  // pred: ^bb58
    %603 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %604 = llvm.insertvalue %168, %603[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %605 = llvm.insertvalue %466, %604[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %606 = llvm.insertvalue %498, %605[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %606 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v4_0", "v2_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(4 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(3 : i64) : i64
    %78 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %60[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %61[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(0 : i64) : i64
    %83 = llvm.getelementptr %51[%82] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %83 : !llvm.ptr<ptr<i8>>
    %84 = llvm.mlir.constant(4 : i64) : i64
    %85 = llvm.call @omTensorCreateUntyped(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.bitcast %87 : !llvm.ptr<f32> to !llvm.ptr<i8>
    %89 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.bitcast %89 : !llvm.ptr<f32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%85, %86, %88, %90) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %91 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @omTensorSetDataType(%85, %91) : (!llvm.ptr<i8>, i64) -> ()
    %92 = llvm.call @omTensorGetShape(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.call @omTensorGetStrides(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %92[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %93[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %92[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %93[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(2 : i64) : i64
    %105 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %92[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %93[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(3 : i64) : i64
    %110 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %92[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %93[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.mlir.constant(1 : i64) : i64
    %115 = llvm.getelementptr %51[%114] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %85, %115 : !llvm.ptr<ptr<i8>>
    %116 = llvm.mlir.constant(4 : i64) : i64
    %117 = llvm.call @omTensorCreateUntyped(%116) : (i64) -> !llvm.ptr<i8>
    %118 = llvm.mlir.constant(1 : i64) : i64
    %119 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.bitcast %119 : !llvm.ptr<f32> to !llvm.ptr<i8>
    %121 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.bitcast %121 : !llvm.ptr<f32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%117, %118, %120, %122) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %123 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @omTensorSetDataType(%117, %123) : (!llvm.ptr<i8>, i64) -> ()
    %124 = llvm.call @omTensorGetShape(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %125 = llvm.call @omTensorGetStrides(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %126 = llvm.mlir.constant(0 : i64) : i64
    %127 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.getelementptr %124[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %125[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(1 : i64) : i64
    %132 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %124[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.getelementptr %125[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(2 : i64) : i64
    %137 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %124[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.getelementptr %125[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.mlir.constant(3 : i64) : i64
    %142 = llvm.extractvalue %47[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %124[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.extractvalue %47[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.getelementptr %125[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.mlir.constant(2 : i64) : i64
    %147 = llvm.getelementptr %51[%146] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %117, %147 : !llvm.ptr<ptr<i8>>
    %148 = llvm.call @omTensorListCreate(%51, %48, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %148 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<211 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<211 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

